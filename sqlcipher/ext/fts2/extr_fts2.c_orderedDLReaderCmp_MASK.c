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
struct TYPE_4__ {int idx; int /*<<< orphan*/  pReader; } ;
typedef  TYPE_1__ OrderedDLReader ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(OrderedDLReader *r1, OrderedDLReader *r2){
  if( FUNC0(r1->pReader) ){
    if( FUNC0(r2->pReader) ) return 0;  /* Both atEnd(). */
    return 1;                              /* Only r1 atEnd(). */
  }
  if( FUNC0(r2->pReader) ) return -1;   /* Only r2 atEnd(). */

  if( FUNC1(r1->pReader)<FUNC1(r2->pReader) ) return -1;
  if( FUNC1(r1->pReader)>FUNC1(r2->pReader) ) return 1;

  /* Descending on idx. */
  return r2->idx-r1->idx;
}