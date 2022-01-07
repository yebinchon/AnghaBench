
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vfs ;


 int ASYNC_DELETE ;
 int UNUSED_PARAMETER (int *) ;
 int addNewAsyncWrite (int ,int ,int,int,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int asyncDelete(sqlite3_vfs *pAsyncVfs, const char *z, int syncDir){
  UNUSED_PARAMETER(pAsyncVfs);
  return addNewAsyncWrite(0, ASYNC_DELETE, syncDir, (int)strlen(z)+1, z);
}
