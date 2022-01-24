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
struct TYPE_2__ {int pagesize; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int,int) ; 
 TYPE_1__ g ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 

__attribute__((used)) static void FUNC6(
  int pgno,             /* The page number */
  int detail,           /* Show leaf pages if true */
  int recursive         /* Follow the trunk change if true */
){
  int n, i;
  unsigned char *a;
  while( pgno>0 ){
    a = FUNC1((pgno-1)*g.pagesize, g.pagesize);
    FUNC3("Decode of freelist trunk page %d:\n", pgno);
    FUNC2(a, 0, 4, "Next freelist trunk page");
    FUNC2(a, 4, 4, "Number of entries on this page");
    if( detail ){
      n = (int)FUNC0(&a[4]);
      for(i=0; i<n; i++){
        unsigned int x = FUNC0(&a[8+4*i]);
        char zIdx[10];
        FUNC4(zIdx, "[%d]", i);
        FUNC3("  %5s %7u", zIdx, x);
        if( i%5==4 ) FUNC3("\n");
      }
      if( i%5!=0 ) FUNC3("\n");
    }
    if( !recursive ){
      pgno = 0;
    }else{
      pgno = (int)FUNC0(&a[0]);
    }
    FUNC5(a);
  }
}