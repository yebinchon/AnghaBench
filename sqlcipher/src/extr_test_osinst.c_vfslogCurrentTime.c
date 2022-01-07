
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vfs ;
struct TYPE_3__ {int (* xCurrentTime ) (TYPE_1__*,double*) ;} ;


 TYPE_1__* REALVFS (int *) ;
 int stub1 (TYPE_1__*,double*) ;

__attribute__((used)) static int vfslogCurrentTime(sqlite3_vfs *pVfs, double *pTimeOut){
  return REALVFS(pVfs)->xCurrentTime(REALVFS(pVfs), pTimeOut);
}
