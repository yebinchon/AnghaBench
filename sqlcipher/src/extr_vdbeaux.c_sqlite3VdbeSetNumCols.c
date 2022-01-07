
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
typedef int sqlite3 ;
struct TYPE_3__ {int nResColumn; int * aColName; int * db; } ;
typedef TYPE_1__ Vdbe ;
typedef int Mem ;


 int COLNAME_N ;
 int MEM_Null ;
 int initMemArray (int *,int,int *,int ) ;
 int releaseMemArray (int *,int) ;
 int sqlite3DbFree (int *,int *) ;
 scalar_t__ sqlite3DbMallocRawNN (int *,int) ;

void sqlite3VdbeSetNumCols(Vdbe *p, int nResColumn){
  int n;
  sqlite3 *db = p->db;

  if( p->nResColumn ){
    releaseMemArray(p->aColName, p->nResColumn*COLNAME_N);
    sqlite3DbFree(db, p->aColName);
  }
  n = nResColumn*COLNAME_N;
  p->nResColumn = (u16)nResColumn;
  p->aColName = (Mem*)sqlite3DbMallocRawNN(db, sizeof(Mem)*n );
  if( p->aColName==0 ) return;
  initMemArray(p->aColName, n, db, MEM_Null);
}
