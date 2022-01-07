
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nPrefix; int otherError; scalar_t__ mallocFailed; int pStmt; scalar_t__ zPrefix; } ;
typedef TYPE_1__ nextCharContext ;


 int SQLITE_DONE ;
 int SQLITE_ROW ;
 int SQLITE_STATIC ;
 int nextCharAppend (TYPE_1__*,unsigned int) ;
 int readUtf8 (unsigned char const*,unsigned int*) ;
 int sqlite3_bind_text (int ,int,char*,int,int ) ;
 unsigned char* sqlite3_column_text (int ,int ) ;
 int sqlite3_reset (int ) ;
 int sqlite3_step (int ) ;
 int writeUtf8 (unsigned char*,unsigned int) ;

__attribute__((used)) static void findNextChars(nextCharContext *p){
  unsigned cPrev = 0;
  unsigned char zPrev[8];
  int n, rc;

  for(;;){
    sqlite3_bind_text(p->pStmt, 1, (char*)p->zPrefix, p->nPrefix,
                      SQLITE_STATIC);
    n = writeUtf8(zPrev, cPrev+1);
    sqlite3_bind_text(p->pStmt, 2, (char*)zPrev, n, SQLITE_STATIC);
    rc = sqlite3_step(p->pStmt);
    if( rc==SQLITE_DONE ){
      sqlite3_reset(p->pStmt);
      return;
    }else if( rc!=SQLITE_ROW ){
      p->otherError = rc;
      return;
    }else{
      const unsigned char *zOut = sqlite3_column_text(p->pStmt, 0);
      unsigned cNext;
      n = readUtf8(zOut+p->nPrefix, &cNext);
      sqlite3_reset(p->pStmt);
      nextCharAppend(p, cNext);
      cPrev = cNext;
      if( p->mallocFailed ) return;
    }
  }
}
