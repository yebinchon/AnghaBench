
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {size_t nStack; int* aPgno; int szPg; int pgno; int f; int * aPage; int ** aStack; scalar_t__ zErr; } ;
typedef TYPE_1__ GState ;


 size_t ArraySize (int **) ;
 int SEEK_SET ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 size_t fread (int *,int,int,int ) ;
 int fseek (int ,int,int ) ;
 int ofstError (TYPE_1__*,char*,...) ;
 int ofstPopPage (TYPE_1__*) ;
 int * sqlite3_malloc (int) ;
 int stderr ;

__attribute__((used)) static void ofstPushPage(GState *p, int pgno){
  u8 *pPage;
  size_t got;
  if( p->zErr ) return;
  if( p->nStack >= ArraySize(p->aStack) ){
    ofstError(p, "page stack overflow");
    return;
  }
  p->aPgno[p->nStack] = pgno;
  p->aStack[p->nStack] = pPage = sqlite3_malloc( p->szPg );
  if( pPage==0 ){
    fprintf(stderr, "out of memory\n");
    exit(1);
  }
  p->nStack++;
  p->aPage = pPage;
  p->pgno = pgno;
  fseek(p->f, (pgno-1)*p->szPg, SEEK_SET);
  got = fread(pPage, 1, p->szPg, p->f);
  if( got!=p->szPg ){
    ofstError(p, "unable to read page %d", pgno);
    ofstPopPage(p);
  }
}
