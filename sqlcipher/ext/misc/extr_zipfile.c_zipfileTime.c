
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {int iVersion; int (* xCurrentTime ) (TYPE_1__*,double*) ;int (* xCurrentTimeInt64 ) (TYPE_1__*,int*) ;} ;
typedef TYPE_1__ sqlite3_vfs ;
typedef int i64 ;


 TYPE_1__* sqlite3_vfs_find (int ) ;
 int stub1 (TYPE_1__*,int*) ;
 int stub2 (TYPE_1__*,double*) ;

__attribute__((used)) static u32 zipfileTime(void){
  sqlite3_vfs *pVfs = sqlite3_vfs_find(0);
  u32 ret;
  if( pVfs->iVersion>=2 && pVfs->xCurrentTimeInt64 ){
    i64 ms;
    pVfs->xCurrentTimeInt64(pVfs, &ms);
    ret = (u32)((ms/1000) - ((i64)24405875 * 8640));
  }else{
    double day;
    pVfs->xCurrentTime(pVfs, &day);
    ret = (u32)((day - 2440587.5) * 86400);
  }
  return ret;
}
