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
struct TYPE_3__ {int nFrom; char const* a; } ;
typedef  TYPE_1__ EditDist3Cost ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 

__attribute__((used)) static int FUNC2(EditDist3Cost *p, const char *z, int n){
  FUNC0( p->nFrom<=n );
  if( p->nFrom ){
    if( p->a[0]!=z[0] ) return 0;
    if( FUNC1(p->a, z, p->nFrom)!=0 ) return 0;
  }
  return 1;
}