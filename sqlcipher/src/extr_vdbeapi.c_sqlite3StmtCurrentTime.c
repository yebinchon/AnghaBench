
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ sqlite3_int64 ;
struct TYPE_9__ {TYPE_2__* pOut; TYPE_3__* pVdbe; } ;
typedef TYPE_4__ sqlite3_context ;
struct TYPE_8__ {scalar_t__ iCurrentTime; } ;
struct TYPE_7__ {TYPE_1__* db; } ;
struct TYPE_6__ {int pVfs; } ;


 int assert (int) ;
 int sqlite3OsCurrentTimeInt64 (int ,scalar_t__*) ;

sqlite3_int64 sqlite3StmtCurrentTime(sqlite3_context *p){
  int rc;

  sqlite3_int64 *piTime = &p->pVdbe->iCurrentTime;
  assert( p->pVdbe!=0 );




  if( *piTime==0 ){
    rc = sqlite3OsCurrentTimeInt64(p->pOut->db->pVfs, piTime);
    if( rc ) *piTime = 0;
  }
  return *piTime;
}
