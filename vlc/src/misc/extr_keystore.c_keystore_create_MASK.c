#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_6__ {int /*<<< orphan*/  pf_remove; int /*<<< orphan*/  pf_find; int /*<<< orphan*/  pf_store; int /*<<< orphan*/ * p_module; } ;
typedef  TYPE_1__ vlc_keystore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char*,char const*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static vlc_keystore *
FUNC5(vlc_object_t *p_parent, const char *psz_name)
{
    vlc_keystore *p_keystore = FUNC3(p_parent, sizeof (*p_keystore),
                                                 "keystore");
    if (FUNC2(p_keystore == NULL))
        return NULL;

    p_keystore->p_module = FUNC1(p_keystore, "keystore", psz_name, true);
    if (p_keystore->p_module == NULL)
    {
        FUNC4(p_keystore);
        return NULL;
    }
    FUNC0(p_keystore->pf_store);
    FUNC0(p_keystore->pf_find);
    FUNC0(p_keystore->pf_remove);

    return p_keystore;
}