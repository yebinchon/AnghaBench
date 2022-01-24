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
struct TYPE_2__ {void* data; } ;
typedef  int /*<<< orphan*/  Hash ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ ) ; 

void *FUNC2(const Hash *pH, const char *pKey){
  FUNC0( pH!=0 );
  FUNC0( pKey!=0 );
  return FUNC1(pH, pKey, 0)->data;
}