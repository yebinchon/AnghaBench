
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3 ;
typedef int Vdbe ;
struct TYPE_5__ {char* zColAff; int nCol; TYPE_1__* aCol; } ;
typedef TYPE_2__ Table ;
struct TYPE_4__ {char affinity; } ;


 int OP_Affinity ;
 char SQLITE_AFF_BLOB ;
 int assert (int) ;
 scalar_t__ sqlite3DbMallocRaw (int ,int) ;
 int sqlite3OomFault (int *) ;
 int sqlite3Strlen30NN (char*) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int,int ,char*,int) ;
 int sqlite3VdbeChangeP4 (int *,int,char*,int) ;
 int * sqlite3VdbeDb (int *) ;

void sqlite3TableAffinity(Vdbe *v, Table *pTab, int iReg){
  int i;
  char *zColAff = pTab->zColAff;
  if( zColAff==0 ){
    sqlite3 *db = sqlite3VdbeDb(v);
    zColAff = (char *)sqlite3DbMallocRaw(0, pTab->nCol+1);
    if( !zColAff ){
      sqlite3OomFault(db);
      return;
    }

    for(i=0; i<pTab->nCol; i++){
      zColAff[i] = pTab->aCol[i].affinity;
    }
    do{
      zColAff[i--] = 0;
    }while( i>=0 && zColAff[i]==SQLITE_AFF_BLOB );
    pTab->zColAff = zColAff;
  }
  assert( zColAff!=0 );
  i = sqlite3Strlen30NN(zColAff);
  if( i ){
    if( iReg ){
      sqlite3VdbeAddOp4(v, OP_Affinity, iReg, i, 0, zColAff, i);
    }else{
      sqlite3VdbeChangeP4(v, -1, zColAff, i);
    }
  }
}
