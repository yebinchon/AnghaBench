
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int bDisable; } ;
struct TYPE_7__ {int isInterrupted; } ;
struct TYPE_9__ {int mallocFailed; scalar_t__ bBenignMalloc; scalar_t__ nVdbeExec; TYPE_1__* pParse; TYPE_3__ lookaside; TYPE_2__ u1; } ;
typedef TYPE_4__ sqlite3 ;
struct TYPE_6__ {int rc; } ;


 int SQLITE_NOMEM_BKPT ;

void sqlite3OomFault(sqlite3 *db){
  if( db->mallocFailed==0 && db->bBenignMalloc==0 ){
    db->mallocFailed = 1;
    if( db->nVdbeExec>0 ){
      db->u1.isInterrupted = 1;
    }
    db->lookaside.bDisable++;
    if( db->pParse ){
      db->pParse->rc = SQLITE_NOMEM_BKPT;
    }
  }
}
