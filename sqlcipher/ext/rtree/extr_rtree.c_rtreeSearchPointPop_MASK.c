#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {size_t iLevel; } ;
struct TYPE_8__ {size_t iLevel; } ;
struct TYPE_9__ {int bPoint; int nPoint; TYPE_5__* aPoint; scalar_t__* aNode; int /*<<< orphan*/ * anQueue; TYPE_1__ sPoint; } ;
typedef  TYPE_2__ RtreeCursor ;

/* Variables and functions */
 int RTREE_CACHE_SZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int) ; 

__attribute__((used)) static void FUNC5(RtreeCursor *p){
  int i, j, k, n;
  i = 1 - p->bPoint;
  FUNC1( i==0 || i==1 );
  if( p->aNode[i] ){
    FUNC2(FUNC0(p), p->aNode[i]);
    p->aNode[i] = 0;
  }
  if( p->bPoint ){
    p->anQueue[p->sPoint.iLevel]--;
    p->bPoint = 0;
  }else if( p->nPoint ){
    p->anQueue[p->aPoint[0].iLevel]--;
    n = --p->nPoint;
    p->aPoint[0] = p->aPoint[n];
    if( n<RTREE_CACHE_SZ-1 ){
      p->aNode[1] = p->aNode[n+1];
      p->aNode[n+1] = 0;
    }
    i = 0;
    while( (j = i*2+1)<n ){
      k = j+1;
      if( k<n && FUNC3(&p->aPoint[k], &p->aPoint[j])<0 ){
        if( FUNC3(&p->aPoint[k], &p->aPoint[i])<0 ){
          FUNC4(p, i, k);
          i = k;
        }else{
          break;
        }
      }else{
        if( FUNC3(&p->aPoint[j], &p->aPoint[i])<0 ){
          FUNC4(p, i, j);
          i = j;
        }else{
          break;
        }
      }
    }
  }
}