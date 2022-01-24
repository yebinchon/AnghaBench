#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int n; int nAlloc; char* z; } ;
typedef  TYPE_1__ String ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 char* FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4(String *p, const char *z, int n){
  if( n<0 ) n = (int)FUNC3(z);
  if( p->n+n>=p->nAlloc ){
    int nAlloc = p->nAlloc*2 + n + 100;
    char *zNew = FUNC2(p->z, nAlloc);
    if( zNew==0 ) FUNC0("out of memory");
    p->z = zNew;
    p->nAlloc = nAlloc;
  }
  FUNC1(p->z+p->n, z, n);
  p->n += n;
  p->z[p->n] = 0;
}