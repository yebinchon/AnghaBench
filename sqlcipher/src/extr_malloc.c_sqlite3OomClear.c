
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ bDisable; } ;
struct TYPE_5__ {scalar_t__ isInterrupted; } ;
struct TYPE_7__ {scalar_t__ nVdbeExec; TYPE_2__ lookaside; TYPE_1__ u1; scalar_t__ mallocFailed; } ;
typedef TYPE_3__ sqlite3 ;


 int assert (int) ;

void sqlite3OomClear(sqlite3 *db){
  if( db->mallocFailed && db->nVdbeExec==0 ){
    db->mallocFailed = 0;
    db->u1.isInterrupted = 0;
    assert( db->lookaside.bDisable>0 );
    db->lookaside.bDisable--;
  }
}
