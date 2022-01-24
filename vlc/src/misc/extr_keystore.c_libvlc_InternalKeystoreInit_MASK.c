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
struct TYPE_3__ {int /*<<< orphan*/ * p_memory_keystore; } ;
typedef  TYPE_1__ libvlc_priv_t ;
typedef  int /*<<< orphan*/  libvlc_int_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(libvlc_int_t *p_libvlc)
{
    FUNC1(p_libvlc != NULL);
    libvlc_priv_t *p_priv = FUNC3(p_libvlc);

    p_priv->p_memory_keystore = FUNC2(FUNC0(p_libvlc), "memory");
    return p_priv->p_memory_keystore != NULL ? VLC_SUCCESS : VLC_EGENERIC;
}