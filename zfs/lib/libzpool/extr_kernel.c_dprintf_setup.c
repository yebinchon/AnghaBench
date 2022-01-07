
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZFS_DEBUG_DPRINTF ;
 scalar_t__ dprintf_find_string (char*) ;
 int dprintf_print_all ;
 char* dprintf_string ;
 char* getenv (char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int zfs_flags ;

void
dprintf_setup(int *argc, char **argv)
{
 int i, j;
 for (i = 1; i < *argc; i++) {
  int len = strlen("debug=");

  if (strncmp("debug=", argv[i], len) == 0) {
   dprintf_string = argv[i] + len;

   for (j = i; j < *argc; j++)
    argv[j] = argv[j+1];
   argv[j] = ((void*)0);
   (*argc)--;
  }
 }

 if (dprintf_string == ((void*)0)) {

  dprintf_string = getenv("ZFS_DEBUG");
 }




 if (dprintf_find_string("on"))
  dprintf_print_all = 1;

 if (dprintf_string != ((void*)0))
  zfs_flags |= ZFS_DEBUG_DPRINTF;
}
