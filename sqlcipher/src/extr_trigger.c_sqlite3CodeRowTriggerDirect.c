
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
typedef int Vdbe ;
struct TYPE_12__ {scalar_t__ pProgram; } ;
typedef TYPE_2__ TriggerPrg ;
struct TYPE_13__ {char* zName; } ;
typedef TYPE_3__ Trigger ;
typedef int Table ;
struct TYPE_14__ {int nMem; TYPE_1__* db; scalar_t__ nErr; } ;
struct TYPE_11__ {int flags; scalar_t__ mallocFailed; } ;
typedef TYPE_4__ Parse ;


 int OP_Program ;
 int P4_SUBPROGRAM ;
 int SQLITE_RecTriggers ;
 int VdbeComment (int *) ;
 int assert (int) ;
 TYPE_2__* getRowTrigger (TYPE_4__*,TYPE_3__*,int *,int) ;
 int onErrorText (int) ;
 int * sqlite3GetVdbe (TYPE_4__*) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int,int ,char const*,int ) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;

void sqlite3CodeRowTriggerDirect(
  Parse *pParse,
  Trigger *p,
  Table *pTab,
  int reg,
  int orconf,
  int ignoreJump
){
  Vdbe *v = sqlite3GetVdbe(pParse);
  TriggerPrg *pPrg;
  pPrg = getRowTrigger(pParse, p, pTab, orconf);
  assert( pPrg || pParse->nErr || pParse->db->mallocFailed );



  if( pPrg ){
    int bRecursive = (p->zName && 0==(pParse->db->flags&SQLITE_RecTriggers));

    sqlite3VdbeAddOp4(v, OP_Program, reg, ignoreJump, ++pParse->nMem,
                      (const char *)pPrg->pProgram, P4_SUBPROGRAM);
    VdbeComment(
        (v, "Call: %s.%s", (p->zName?p->zName:"fkey"), onErrorText(orconf)));






    sqlite3VdbeChangeP5(v, (u8)bRecursive);
  }
}
