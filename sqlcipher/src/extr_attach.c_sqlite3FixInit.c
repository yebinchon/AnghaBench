
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nDb; TYPE_1__* aDb; } ;
typedef TYPE_2__ sqlite3 ;
typedef int Token ;
struct TYPE_10__ {char const* zType; int bVarOnly; int const* pName; int pSchema; int zDb; TYPE_3__* pParse; } ;
struct TYPE_9__ {TYPE_2__* db; } ;
struct TYPE_7__ {int pSchema; int zDbSName; } ;
typedef TYPE_3__ Parse ;
typedef TYPE_4__ DbFixer ;


 int assert (int) ;

void sqlite3FixInit(
  DbFixer *pFix,
  Parse *pParse,
  int iDb,
  const char *zType,
  const Token *pName
){
  sqlite3 *db;

  db = pParse->db;
  assert( db->nDb>iDb );
  pFix->pParse = pParse;
  pFix->zDb = db->aDb[iDb].zDbSName;
  pFix->pSchema = db->aDb[iDb].pSchema;
  pFix->zType = zType;
  pFix->pName = pName;
  pFix->bVarOnly = (iDb==1);
}
