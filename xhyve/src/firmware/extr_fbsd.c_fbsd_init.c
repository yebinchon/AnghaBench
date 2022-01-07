
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* userboot; char* bootvolume; char* kernelenv; char* cons; } ;


 TYPE_1__ config ;

void
fbsd_init(char *userboot_path, char *bootvolume_path, char *kernelenv,
 char *cons)
{
 config.userboot = userboot_path;
 config.bootvolume = bootvolume_path;
 config.kernelenv = kernelenv;
 config.cons = cons;
}
