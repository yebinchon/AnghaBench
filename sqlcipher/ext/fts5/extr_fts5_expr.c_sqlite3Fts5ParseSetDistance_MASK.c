#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int nNear; } ;
struct TYPE_5__ {int n; int* p; } ;
typedef  TYPE_1__ Fts5Token ;
typedef  int /*<<< orphan*/  Fts5Parse ;
typedef  TYPE_2__ Fts5ExprNearset ;

/* Variables and functions */
 int FTS5_DEFAULT_NEARDIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int*) ; 

void FUNC1(
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
          FUNC0(
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