#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int mxPage; int pagesize; } ;

/* Variables and functions */
 int FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int,int) ; 
 TYPE_1__ g ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 

__attribute__((used)) static void FUNC4(int pgno){
  unsigned char *a;
  int cnt = 0;
  int i;
  int n;
  int iNext;
  int parent = 1;

  while( pgno>0 && pgno<=g.mxPage && (cnt++)<g.mxPage ){
    FUNC2(pgno, "freelist trunk #%d child of %d", cnt, parent);
    a = FUNC1((pgno-1)*g.pagesize, g.pagesize);
    iNext = FUNC0(a);
    n = FUNC0(a+4);
    for(i=0; i<n; i++){
      int child = FUNC0(a + (i*4+8));
      FUNC2(child, "freelist leaf, child %d of trunk page %d",
                     i, pgno);
    }
    FUNC3(a);
    parent = pgno;
    pgno = iNext;
  }
}