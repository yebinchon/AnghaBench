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
struct tagMSIVIEW {int dummy; } ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_6__ {TYPE_1__* db; } ;
struct TYPE_5__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_2__ MSICREATEVIEW ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC3( struct tagMSIVIEW *view )
{
    MSICREATEVIEW *cv = (MSICREATEVIEW*)view;

    FUNC0("%p\n", cv );

    FUNC2( &cv->db->hdr );
    FUNC1( cv );

    return ERROR_SUCCESS;
}