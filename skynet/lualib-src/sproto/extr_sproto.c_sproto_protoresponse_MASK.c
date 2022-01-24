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
struct sproto {int dummy; } ;
struct protocol {scalar_t__ confirm; scalar_t__* p; } ;

/* Variables and functions */
 size_t SPROTO_RESPONSE ; 
 struct protocol* FUNC0 (struct sproto const*,int) ; 

int
FUNC1(const struct sproto * sp, int proto) {
	struct protocol * p = FUNC0(sp, proto);
	return (p!=NULL && (p->p[SPROTO_RESPONSE] || p->confirm));
}