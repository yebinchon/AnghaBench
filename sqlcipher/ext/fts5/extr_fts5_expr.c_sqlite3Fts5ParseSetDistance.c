
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nNear; } ;
struct TYPE_5__ {int n; int* p; } ;
typedef TYPE_1__ Fts5Token ;
typedef int Fts5Parse ;
typedef TYPE_2__ Fts5ExprNearset ;


 int FTS5_DEFAULT_NEARDIST ;
 int sqlite3Fts5ParseError (int *,char*,int,int*) ;

void sqlite3Fts5ParseSetDistance(
  Fts5Parse *pParse,
  Fts5ExprNearset *pNear,
  Fts5Token *p
){
  if( pNear ){
    int nNear = 0;
    int i;
    if( p->n ){
      for(i=0; i<p->n; i++){
        char c = (char)p->p[i];
        if( c<'0' || c>'9' ){
          sqlite3Fts5ParseError(
              pParse, "expected integer, got \"%.*s\"", p->n, p->p
              );
          return;
        }
        nNear = nNear * 10 + (p->p[i] - '0');
      }
    }else{
      nNear = FTS5_DEFAULT_NEARDIST;
    }
    pNear->nNear = nNear;
  }
}
