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
struct dialog_control {int /*<<< orphan*/  control; int /*<<< orphan*/  dialog; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  MSIRECORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static UINT FUNC2( MSIRECORD *row, void *param )
{
    struct dialog_control *dc = param;
    const WCHAR *event = FUNC0( row, 3 );
    const WCHAR *attribute = FUNC0( row, 4 );

    FUNC1( dc->dialog, event, dc->control, attribute );
    return ERROR_SUCCESS;
}