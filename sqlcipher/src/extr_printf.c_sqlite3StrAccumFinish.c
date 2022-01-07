
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* zText; size_t nChar; scalar_t__ mxAlloc; } ;
typedef TYPE_1__ StrAccum ;


 int isMalloced (TYPE_1__*) ;
 char* strAccumFinishRealloc (TYPE_1__*) ;

char *sqlite3StrAccumFinish(StrAccum *p){
  if( p->zText ){
    p->zText[p->nChar] = 0;
    if( p->mxAlloc>0 && !isMalloced(p) ){
      return strAccumFinishRealloc(p);
    }
  }
  return p->zText;
}
