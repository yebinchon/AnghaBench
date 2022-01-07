
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* kernel; char* initrd; char* cmdline; } ;


 TYPE_1__ config ;

void
kexec_init(char *kernel_path, char *initrd_path, char *cmdline) {
 config.kernel = kernel_path;
 config.initrd = initrd_path;
 config.cmdline = cmdline;
}
