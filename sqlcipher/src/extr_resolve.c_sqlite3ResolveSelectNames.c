
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pNC; } ;
struct TYPE_5__ {TYPE_1__ u; int * pParse; scalar_t__ xSelectCallback2; int xSelectCallback; int xExprCallback; } ;
typedef TYPE_2__ Walker ;
typedef int Select ;
typedef int Parse ;
typedef int NameContext ;


 int assert (int) ;
 int resolveExprStep ;
 int resolveSelectStep ;
 int sqlite3WalkSelect (TYPE_2__*,int *) ;

void sqlite3ResolveSelectNames(
  Parse *pParse,
  Select *p,
  NameContext *pOuterNC
){
  Walker w;

  assert( p!=0 );
  w.xExprCallback = resolveExprStep;
  w.xSelectCallback = resolveSelectStep;
  w.xSelectCallback2 = 0;
  w.pParse = pParse;
  w.u.pNC = pOuterNC;
  sqlite3WalkSelect(&w, p);
}
