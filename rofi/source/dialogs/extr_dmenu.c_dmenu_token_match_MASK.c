#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rofi_int_matcher ;
struct TYPE_4__ {TYPE_1__* cmd_list; scalar_t__ do_markup; } ;
struct TYPE_3__ {char* entry; } ;
typedef  int /*<<< orphan*/  Mode ;
typedef  TYPE_2__ DmenuModePrivateData ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ **,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4 ( const Mode *sw, rofi_int_matcher **tokens, unsigned int index )
{
    DmenuModePrivateData *rmpd = (DmenuModePrivateData *) FUNC2 ( sw );
    if ( rmpd->do_markup) {
        /** Strip out the markup when matching. */
        char *esc = NULL;
        FUNC3(rmpd->cmd_list[index].entry, -1, 0, NULL, &esc, NULL, NULL);
        if ( esc ) {
            int retv = FUNC1 ( tokens, esc);
            FUNC0 (esc);
            return retv;
        }
        return FALSE;

    } else {
        return FUNC1 ( tokens, rmpd->cmd_list[index].entry );
    }
}