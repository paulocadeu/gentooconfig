# comando para montar a particoes
mount /dev/sda1 /boot 		# /boot
mount /dev/sda3 /mnt/gentoo 	# /
mount /dev/sda4 /home		# /home
# Comandos para montar os sistemas de arquivos necessarios para a instalação do sistema
mount --types proc /proc /mnt/gentoo/proc
mount --rbind /sys /mnt/gentoo/sys
mount --make-rslave /mnt/gentoo/sys
mount --rbind /dev /mnt/gentoo/dev
mount --make-rslave /mnt/gentoo/dev
# comandos para entrar no novo ambiente
chroot /mnt/gentoo /bin/bash
source /etc/profile
export PS1="(chroot) ${PS1}"

