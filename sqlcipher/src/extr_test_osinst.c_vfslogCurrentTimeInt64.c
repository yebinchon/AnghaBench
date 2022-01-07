
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vfs ;
typedef int sqlite3_int64 ;
struct TYPE_3__ {int (* xCurrentTimeInt64 ) (TYPE_1__*,int *) ;} ;


 TYPE_1__* REALVFS (int *) ;
 int stub1 (TYPE_1__*,int *) ;

__attribute__((used)) static int vfslogCurrentTimeInt64(sqlite3_vfs *pVfs, sqlite3_int64 *p){
  return REALVFS(pVfs)->xCurrentTimeInt64(REALVFS(pVfs), p);
}
