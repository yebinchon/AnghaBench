
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int zName; TYPE_4__* pFKey; } ;
typedef TYPE_2__ Table ;
struct TYPE_16__ {scalar_t__* aAction; struct TYPE_16__* pNextTo; int zTo; struct TYPE_16__* pNextFrom; } ;
struct TYPE_15__ {TYPE_1__* db; } ;
struct TYPE_13__ {int flags; } ;
typedef TYPE_3__ Parse ;
typedef TYPE_4__ FKey ;


 scalar_t__ OE_None ;
 int SQLITE_ForeignKeys ;
 scalar_t__ fkChildIsModified (TYPE_2__*,TYPE_4__*,int*,int) ;
 scalar_t__ fkParentIsModified (TYPE_2__*,TYPE_4__*,int*,int) ;
 TYPE_4__* sqlite3FkReferences (TYPE_2__*) ;
 scalar_t__ sqlite3_stricmp (int ,int ) ;

int sqlite3FkRequired(
  Parse *pParse,
  Table *pTab,
  int *aChange,
  int chngRowid
){
  int eRet = 0;
  if( pParse->db->flags&SQLITE_ForeignKeys ){
    if( !aChange ){



      eRet = (sqlite3FkReferences(pTab) || pTab->pFKey);
    }else{


      FKey *p;


      for(p=pTab->pFKey; p; p=p->pNextFrom){
        if( 0==sqlite3_stricmp(pTab->zName, p->zTo) ) return 2;
        if( fkChildIsModified(pTab, p, aChange, chngRowid) ){
          eRet = 1;
        }
      }


      for(p=sqlite3FkReferences(pTab); p; p=p->pNextTo){
        if( fkParentIsModified(pTab, p, aChange, chngRowid) ){
          if( p->aAction[1]!=OE_None ) return 2;
          eRet = 1;
        }
      }
    }
  }
  return eRet;
}
