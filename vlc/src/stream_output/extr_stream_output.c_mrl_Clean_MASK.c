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
struct TYPE_3__ {int /*<<< orphan*/  psz_name; int /*<<< orphan*/  psz_way; int /*<<< orphan*/  psz_access; } ;
typedef  TYPE_1__ mrl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1( mrl_t *p_mrl )
{
    FUNC0( p_mrl->psz_access );
    FUNC0( p_mrl->psz_way );
    FUNC0( p_mrl->psz_name );
}