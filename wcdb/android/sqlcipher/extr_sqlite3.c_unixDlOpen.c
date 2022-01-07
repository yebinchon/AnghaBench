
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vfs ;


 int RTLD_GLOBAL ;
 int RTLD_NOW ;
 int UNUSED_PARAMETER (int *) ;
 void* dlopen (char const*,int) ;

__attribute__((used)) static void *unixDlOpen(sqlite3_vfs *NotUsed, const char *zFilename){
  UNUSED_PARAMETER(NotUsed);
  return dlopen(zFilename, RTLD_NOW | RTLD_GLOBAL);
}
