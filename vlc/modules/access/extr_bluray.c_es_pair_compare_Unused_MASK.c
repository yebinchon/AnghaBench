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
struct TYPE_3__ {int b_recyling; } ;
typedef  TYPE_1__ es_pair_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const*) ; 

__attribute__((used)) static bool FUNC1(const es_pair_t *p_pair, const void *priv)
{
    FUNC0(priv);
    return p_pair->b_recyling;
}