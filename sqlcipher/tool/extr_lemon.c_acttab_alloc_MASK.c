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
struct TYPE_4__ {int nsymbol; int nterminal; } ;
typedef  TYPE_1__ acttab ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

acttab *FUNC4(int nsymbol, int nterminal){
  acttab *p = (acttab *) FUNC0( 1, sizeof(*p) );
  if( p==0 ){
    FUNC2(stderr,"Unable to allocate memory for a new acttab.");
    FUNC1(1);
  }
  FUNC3(p, 0, sizeof(*p));
  p->nsymbol = nsymbol;
  p->nterminal = nterminal;
  return p;
}