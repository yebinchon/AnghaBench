
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vfs ;
struct TYPE_3__ {void* (* xDlOpen ) (TYPE_1__*,char const*) ;} ;


 TYPE_1__* REALVFS (int *) ;
 void* stub1 (TYPE_1__*,char const*) ;

__attribute__((used)) static void *vfslogDlOpen(sqlite3_vfs *pVfs, const char *zPath){
  return REALVFS(pVfs)->xDlOpen(REALVFS(pVfs), zPath);
}
