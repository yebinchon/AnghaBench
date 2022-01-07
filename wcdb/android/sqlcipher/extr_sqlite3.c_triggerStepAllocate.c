
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3 ;
struct TYPE_10__ {char* zTarget; int zSpan; int op; } ;
typedef TYPE_1__ TriggerStep ;
struct TYPE_11__ {scalar_t__ n; int z; } ;
typedef TYPE_2__ Token ;
struct TYPE_12__ {int * db; } ;
typedef TYPE_3__ Parse ;


 scalar_t__ IN_RENAME_OBJECT ;
 int memcpy (char*,int ,scalar_t__) ;
 TYPE_1__* sqlite3DbMallocZero (int *,scalar_t__) ;
 int sqlite3Dequote (char*) ;
 int sqlite3RenameTokenMap (TYPE_3__*,char*,TYPE_2__*) ;
 int triggerSpanDup (int *,char const*,char const*) ;

__attribute__((used)) static TriggerStep *triggerStepAllocate(
  Parse *pParse,
  u8 op,
  Token *pName,
  const char *zStart,
  const char *zEnd
){
  sqlite3 *db = pParse->db;
  TriggerStep *pTriggerStep;

  pTriggerStep = sqlite3DbMallocZero(db, sizeof(TriggerStep) + pName->n + 1);
  if( pTriggerStep ){
    char *z = (char*)&pTriggerStep[1];
    memcpy(z, pName->z, pName->n);
    sqlite3Dequote(z);
    pTriggerStep->zTarget = z;
    pTriggerStep->op = op;
    pTriggerStep->zSpan = triggerSpanDup(db, zStart, zEnd);
    if( IN_RENAME_OBJECT ){
      sqlite3RenameTokenMap(pParse, pTriggerStep->zTarget, pName);
    }
  }
  return pTriggerStep;
}
