
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3 ;
struct TYPE_6__ {char* zName; scalar_t__ xCmp; scalar_t__ xDel; } ;
typedef TYPE_1__ CollSeq ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;



 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 TYPE_1__* sqlite3FindCollSeq (int *,int const,char*,int ) ;

__attribute__((used)) static int synthCollSeq(sqlite3 *db, CollSeq *pColl){
  CollSeq *pColl2;
  char *z = pColl->zName;
  int i;
  static const u8 aEnc[] = { 130, 129, 128 };
  for(i=0; i<3; i++){
    pColl2 = sqlite3FindCollSeq(db, aEnc[i], z, 0);
    if( pColl2->xCmp!=0 ){
      memcpy(pColl, pColl2, sizeof(CollSeq));
      pColl->xDel = 0;
      return SQLITE_OK;
    }
  }
  return SQLITE_ERROR;
}
