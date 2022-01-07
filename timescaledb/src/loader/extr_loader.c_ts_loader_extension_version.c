
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* extension_version () ;

extern char *
ts_loader_extension_version(void)
{
 return extension_version();
}
