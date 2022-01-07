
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int SPECIAL_INITRD_ROOT_FS_TARGET ;
 int SPECIAL_LOCAL_FS_TARGET ;
 int add_mount (char*,char*,char*,int *,int,int *,char*,int ) ;
 int add_root_cryptsetup () ;
 int arg_dest ;
 scalar_t__ arg_root_rw ;
 int efi_loader_get_device_part_uuid (int *) ;
 int generator_write_initrd_root_device_deps (int ,char*) ;
 scalar_t__ in_initrd () ;
 int is_efi_boot () ;
 int log_debug (char*) ;
 int log_error_errno (int,char*) ;

__attribute__((used)) static int add_root_mount(void) {
        return 0;

}
