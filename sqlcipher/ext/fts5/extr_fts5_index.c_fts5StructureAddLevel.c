
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_5__ {int nLevel; int * aLevel; } ;
typedef int Fts5StructureLevel ;
typedef TYPE_1__ Fts5Structure ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memset (int *,int ,int) ;
 TYPE_1__* sqlite3_realloc64 (TYPE_1__*,int) ;

__attribute__((used)) static void fts5StructureAddLevel(int *pRc, Fts5Structure **ppStruct){
  if( *pRc==SQLITE_OK ){
    Fts5Structure *pStruct = *ppStruct;
    int nLevel = pStruct->nLevel;
    sqlite3_int64 nByte = (
        sizeof(Fts5Structure) +
        sizeof(Fts5StructureLevel) * (nLevel+1)
    );

    pStruct = sqlite3_realloc64(pStruct, nByte);
    if( pStruct ){
      memset(&pStruct->aLevel[nLevel], 0, sizeof(Fts5StructureLevel));
      pStruct->nLevel++;
      *ppStruct = pStruct;
    }else{
      *pRc = SQLITE_NOMEM;
    }
  }
}
