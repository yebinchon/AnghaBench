#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  msi_dialog ;
struct TYPE_5__ {int /*<<< orphan*/  (* handler ) (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ msi_control ;
struct TYPE_6__ {int /*<<< orphan*/  hwndFrom; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_2__* LPNMHDR ;
typedef  int /*<<< orphan*/  LPARAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT FUNC3( msi_dialog *dialog, LPARAM param )
{
    LPNMHDR nmhdr = (LPNMHDR) param;
    msi_control *control = FUNC1( dialog, nmhdr->hwndFrom );

    FUNC0("%p %p\n", dialog, nmhdr->hwndFrom);

    if ( control && control->handler )
        control->handler( dialog, control, param );

    return 0;
}