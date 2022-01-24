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
struct TYPE_3__ {int /*<<< orphan*/  db; int /*<<< orphan*/  table; } ;
typedef  TYPE_1__ MSISELECTVIEW ;
typedef  int /*<<< orphan*/  MSIRECORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct tagMSIVIEW*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static UINT FUNC2( struct tagMSIVIEW *view, UINT row, MSIRECORD **rec )
{
    MSISELECTVIEW *sv = (MSISELECTVIEW *)view;

    FUNC0("%p %d %p\n", sv, row, rec );

    if( !sv->table )
         return ERROR_FUNCTION_FAILED;

    return FUNC1(sv->db, view, row, rec);
}