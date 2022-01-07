
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snippetMatch {int iCol; int iTerm; int iStart; int nByte; } ;
struct TYPE_3__ {int nMatch; int nAlloc; struct snippetMatch* aMatch; } ;
typedef TYPE_1__ Snippet ;


 struct snippetMatch* sqlite3_realloc (struct snippetMatch*,int) ;

__attribute__((used)) static void snippetAppendMatch(
  Snippet *p,
  int iCol, int iTerm,
  int iStart, int nByte
){
  int i;
  struct snippetMatch *pMatch;
  if( p->nMatch+1>=p->nAlloc ){
    p->nAlloc = p->nAlloc*2 + 10;
    p->aMatch = sqlite3_realloc(p->aMatch, p->nAlloc*sizeof(p->aMatch[0]) );
    if( p->aMatch==0 ){
      p->nMatch = 0;
      p->nAlloc = 0;
      return;
    }
  }
  i = p->nMatch++;
  pMatch = &p->aMatch[i];
  pMatch->iCol = iCol;
  pMatch->iTerm = iTerm;
  pMatch->iStart = iStart;
  pMatch->nByte = nByte;
}
