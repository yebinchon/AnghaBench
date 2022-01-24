#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct tagMSIVIEW {int dummy; } ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_12__ {TYPE_1__* ops; } ;
struct TYPE_11__ {TYPE_2__* db; struct TYPE_11__* order_info; scalar_t__ table_count; struct TYPE_11__* tables; struct TYPE_11__* next; TYPE_5__* view; } ;
struct TYPE_10__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* delete ) (TYPE_5__*) ;} ;
typedef  TYPE_3__ MSIWHEREVIEW ;
typedef  TYPE_3__ JOINTABLE ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 

__attribute__((used)) static UINT FUNC5( struct tagMSIVIEW *view )
{
    MSIWHEREVIEW *wv = (MSIWHEREVIEW*)view;
    JOINTABLE *table = wv->tables;

    FUNC0("%p\n", wv );

    while(table)
    {
        JOINTABLE *next;

        table->view->ops->delete(table->view);
        table->view = NULL;
        next = table->next;
        FUNC2(table);
        table = next;
    }
    wv->tables = NULL;
    wv->table_count = 0;

    FUNC1(wv);

    FUNC2(wv->order_info);
    wv->order_info = NULL;

    FUNC3( &wv->db->hdr );
    FUNC2( wv );

    return ERROR_SUCCESS;
}