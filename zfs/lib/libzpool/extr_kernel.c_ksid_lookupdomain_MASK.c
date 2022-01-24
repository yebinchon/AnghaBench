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
struct TYPE_4__ {int /*<<< orphan*/  kd_name; } ;
typedef  TYPE_1__ ksiddomain_t ;

/* Variables and functions */
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 

ksiddomain_t *
FUNC2(const char *dom)
{
	ksiddomain_t *kd;

	kd = FUNC1(sizeof (ksiddomain_t), UMEM_NOFAIL);
	kd->kd_name = FUNC0(dom);
	return (kd);
}