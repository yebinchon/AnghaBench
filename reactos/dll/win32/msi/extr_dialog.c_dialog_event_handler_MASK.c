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
typedef  int /*<<< orphan*/  msi_dialog ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_2__ {int /*<<< orphan*/  (* handler ) (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ;scalar_t__ event; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* control_events ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static UINT FUNC5( msi_dialog *dialog, const WCHAR *event, const WCHAR *argument )
{
    unsigned int i;

    FUNC1("handling event %s\n", FUNC2(event));

    if (!event) return ERROR_SUCCESS;

    for (i = 0; control_events[i].event; i++)
    {
        if (!FUNC3( control_events[i].event, event ))
            return control_events[i].handler( dialog, argument );
    }
    FUNC0("unhandled event %s arg(%s)\n", FUNC2(event), FUNC2(argument));
    return ERROR_SUCCESS;
}