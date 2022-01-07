
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int tRowcnt ;
struct TYPE_9__ {int db; int zDatabase; } ;
typedef TYPE_1__ analysisInfo ;
struct TYPE_10__ {int tabFlags; int szTabRow; int nRowLogEst; } ;
typedef TYPE_2__ Table ;
struct TYPE_11__ {int nKeyCol; int hasStat1; scalar_t__ pPartIdxWhere; int szIdxRow; TYPE_2__* pTable; int * aiRowLogEst; scalar_t__ bUnordered; int * aiRowEst; } ;
typedef TYPE_3__ Index ;


 int TF_HasStat1 ;
 int UNUSED_PARAMETER2 (char**,int) ;
 int assert (int) ;
 int decodeIntArray (char*,int,int *,int *,TYPE_3__*) ;
 TYPE_3__* sqlite3FindIndex (int ,char*,int ) ;
 TYPE_2__* sqlite3FindTable (int ,char*,int ) ;
 scalar_t__ sqlite3MallocZero (int) ;
 int sqlite3OomFault (int ) ;
 TYPE_3__* sqlite3PrimaryKeyIndex (TYPE_2__*) ;
 scalar_t__ sqlite3_stricmp (char*,char*) ;

__attribute__((used)) static int analysisLoader(void *pData, int argc, char **argv, char **NotUsed){
  analysisInfo *pInfo = (analysisInfo*)pData;
  Index *pIndex;
  Table *pTable;
  const char *z;

  assert( argc==3 );
  UNUSED_PARAMETER2(NotUsed, argc);

  if( argv==0 || argv[0]==0 || argv[2]==0 ){
    return 0;
  }
  pTable = sqlite3FindTable(pInfo->db, argv[0], pInfo->zDatabase);
  if( pTable==0 ){
    return 0;
  }
  if( argv[1]==0 ){
    pIndex = 0;
  }else if( sqlite3_stricmp(argv[0],argv[1])==0 ){
    pIndex = sqlite3PrimaryKeyIndex(pTable);
  }else{
    pIndex = sqlite3FindIndex(pInfo->db, argv[1], pInfo->zDatabase);
  }
  z = argv[2];

  if( pIndex ){
    tRowcnt *aiRowEst = 0;
    int nCol = pIndex->nKeyCol+1;
    pIndex->bUnordered = 0;
    decodeIntArray((char*)z, nCol, aiRowEst, pIndex->aiRowLogEst, pIndex);
    pIndex->hasStat1 = 1;
    if( pIndex->pPartIdxWhere==0 ){
      pTable->nRowLogEst = pIndex->aiRowLogEst[0];
      pTable->tabFlags |= TF_HasStat1;
    }
  }else{
    Index fakeIdx;
    fakeIdx.szIdxRow = pTable->szTabRow;



    decodeIntArray((char*)z, 1, 0, &pTable->nRowLogEst, &fakeIdx);
    pTable->szTabRow = fakeIdx.szIdxRow;
    pTable->tabFlags |= TF_HasStat1;
  }

  return 0;
}
