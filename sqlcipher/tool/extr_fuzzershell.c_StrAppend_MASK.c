#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int sqlite3_uint64 ;
struct TYPE_4__ {int n; int nAlloc; int oomErr; char* z; } ;
typedef  TYPE_1__ Str ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,int) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(Str *p, const char *z){
  sqlite3_uint64 n = FUNC4(z);
  if( p->n + n >= p->nAlloc ){
    char *zNew;
    sqlite3_uint64 nNew;
    if( p->oomErr ) return;
    nNew = p->nAlloc*2 + 100 + n;
    zNew = FUNC3(p->z, (int)nNew);
    if( zNew==0 ){
      FUNC2(p->z);
      FUNC1(p, 0, sizeof(*p));
      p->oomErr = 1;
      return;
    }
    p->z = zNew;
    p->nAlloc = nNew;
  }
  FUNC0(p->z + p->n, z, (size_t)n);
  p->n += n;
  p->z[p->n] = 0;
}