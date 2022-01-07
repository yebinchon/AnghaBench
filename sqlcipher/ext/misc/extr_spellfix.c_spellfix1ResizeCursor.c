
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct spellfix1_row {int dummy; } ;
struct TYPE_4__ {int nRow; int nAlloc; struct spellfix1_row* a; } ;
typedef TYPE_1__ spellfix1_cursor ;


 int assert (int) ;
 int spellfix1ResetCursor (TYPE_1__*) ;
 int sqlite3_free (struct spellfix1_row*) ;
 struct spellfix1_row* sqlite3_realloc64 (struct spellfix1_row*,int) ;

__attribute__((used)) static void spellfix1ResizeCursor(spellfix1_cursor *pCur, int N){
  struct spellfix1_row *aNew;
  assert( N>=pCur->nRow );
  aNew = sqlite3_realloc64(pCur->a, sizeof(pCur->a[0])*N);
  if( aNew==0 && N>0 ){
    spellfix1ResetCursor(pCur);
    sqlite3_free(pCur->a);
    pCur->nAlloc = 0;
    pCur->a = 0;
  }else{
    pCur->nAlloc = N;
    pCur->a = aNew;
  }
}
