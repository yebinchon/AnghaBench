
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_5__ {TYPE_1__* db; int * pVdbe; } ;
struct TYPE_4__ {int mallocFailed; } ;
typedef TYPE_2__ Parse ;


 int OP_Affinity ;
 char SQLITE_AFF_BLOB ;
 int assert (int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int,int ,char*,int) ;

__attribute__((used)) static void codeApplyAffinity(Parse *pParse, int base, int n, char *zAff){
  Vdbe *v = pParse->pVdbe;
  if( zAff==0 ){
    assert( pParse->db->mallocFailed );
    return;
  }
  assert( v!=0 );




  while( n>0 && zAff[0]==SQLITE_AFF_BLOB ){
    n--;
    base++;
    zAff++;
  }
  while( n>1 && zAff[n-1]==SQLITE_AFF_BLOB ){
    n--;
  }


  if( n>0 ){
    sqlite3VdbeAddOp4(v, OP_Affinity, base, n, 0, zAff, n);
  }
}
