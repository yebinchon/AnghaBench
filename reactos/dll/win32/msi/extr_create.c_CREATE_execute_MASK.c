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
struct tagMSIVIEW {int dummy; } ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int /*<<< orphan*/  col_info; int /*<<< orphan*/  name; int /*<<< orphan*/  db; int /*<<< orphan*/  hold; scalar_t__ bIsTemp; } ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  TYPE_1__ MSICREATEVIEW ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSICONDITION_FALSE ; 
 int /*<<< orphan*/  MSICONDITION_TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC3( struct tagMSIVIEW *view, MSIRECORD *record )
{
    MSICREATEVIEW *cv = (MSICREATEVIEW*)view;
    BOOL persist = (cv->bIsTemp) ? MSICONDITION_FALSE : MSICONDITION_TRUE;

    FUNC0("%p Table %s (%s)\n", cv, FUNC1(cv->name),
          cv->bIsTemp?"temporary":"permanent");

    if (cv->bIsTemp && !cv->hold)
        return ERROR_SUCCESS;

    return FUNC2( cv->db, cv->name, cv->col_info, persist );
}