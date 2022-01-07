
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 char* ZFS_META_NAME ;
 char* ZFS_META_RELEASE ;
 char* ZFS_META_VERSION ;
 int exit (int ) ;
 int printf (char*,char*,char*,char*) ;

__attribute__((used)) static void
_zed_conf_display_version(void)
{
 printf("%s-%s-%s\n",
     ZFS_META_NAME, ZFS_META_VERSION, ZFS_META_RELEASE);

 exit(EXIT_SUCCESS);
}
