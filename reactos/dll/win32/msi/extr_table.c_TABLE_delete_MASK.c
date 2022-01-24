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
struct TYPE_3__ {int /*<<< orphan*/ * columns; int /*<<< orphan*/ * table; } ;
typedef  TYPE_1__ MSITABLEVIEW ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,struct tagMSIVIEW*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static UINT FUNC2( struct tagMSIVIEW *view )
{
    MSITABLEVIEW *tv = (MSITABLEVIEW*)view;

    FUNC0("%p\n", view );

    tv->table = NULL;
    tv->columns = NULL;

    FUNC1( tv );

    return ERROR_SUCCESS;
}