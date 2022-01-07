
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef void* u16 ;
typedef int sqlite3 ;
struct TYPE_5__ {int nRef; int * db; int enc; void* nAllField; void* nKeyField; int * aColl; int * aSortOrder; } ;
typedef TYPE_1__ KeyInfo ;
typedef int CollSeq ;


 int ENC (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* sqlite3DbMallocRawNN (int *,int) ;
 int sqlite3OomFault (int *) ;

KeyInfo *sqlite3KeyInfoAlloc(sqlite3 *db, int N, int X){
  int nExtra = (N+X)*(sizeof(CollSeq*)+1) - sizeof(CollSeq*);
  KeyInfo *p = sqlite3DbMallocRawNN(db, sizeof(KeyInfo) + nExtra);
  if( p ){
    p->aSortOrder = (u8*)&p->aColl[N+X];
    p->nKeyField = (u16)N;
    p->nAllField = (u16)(N+X);
    p->enc = ENC(db);
    p->db = db;
    p->nRef = 1;
    memset(&p[1], 0, nExtra);
  }else{
    sqlite3OomFault(db);
  }
  return p;
}
