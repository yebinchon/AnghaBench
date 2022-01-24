#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dstr {int nUsed; int nAlloc; char* z; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(struct dstr *p, const char *z, int divider){
  int n = (int)FUNC4(z);
  if( p->nUsed + n + 2 > p->nAlloc ){
    char *zNew;
    p->nAlloc = p->nAlloc*2 + n + 200;
    zNew = FUNC3(p->z, p->nAlloc);
    if( zNew==0 ){
      FUNC2(p->z);
      FUNC1(p, 0, sizeof(*p));
      return;
    }
    p->z = zNew;
  }
  if( divider && p->nUsed>0 ){
    p->z[p->nUsed++] = divider;
  }
  FUNC0(&p->z[p->nUsed], z, n+1);
  p->nUsed += n;
}