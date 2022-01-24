#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tagMSIVIEW {int dummy; } ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {TYPE_3__* table; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* execute ) (TYPE_3__*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ MSISELECTVIEW ;
typedef  int /*<<< orphan*/  MSIRECORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC2( struct tagMSIVIEW *view, MSIRECORD *record )
{
    MSISELECTVIEW *sv = (MSISELECTVIEW*)view;

    FUNC0("%p %p\n", sv, record);

    if( !sv->table )
         return ERROR_FUNCTION_FAILED;

    return sv->table->ops->execute( sv->table, record );
}