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
struct TYPE_3__ {scalar_t__ tempFile; int /*<<< orphan*/  pPCache; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(Pager *pPager, int bCommit){
  if( pPager->tempFile==0 ) return 1;
  if( !bCommit ) return 0;
  if( !FUNC0(pPager->fd) ) return 0;
  return (FUNC1(pPager->pPCache)>=25);
}