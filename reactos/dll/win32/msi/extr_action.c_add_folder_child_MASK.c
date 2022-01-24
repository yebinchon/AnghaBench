#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_7__ {int /*<<< orphan*/  entry; TYPE_1__* folder; } ;
struct TYPE_6__ {int /*<<< orphan*/  children; } ;
typedef  TYPE_1__ MSIFOLDER ;
typedef  TYPE_2__ FolderList ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int) ; 

__attribute__((used)) static UINT FUNC2( MSIFOLDER *parent, MSIFOLDER *child )
{
    FolderList *fl;

    if (!(fl = FUNC1( sizeof(*fl) ))) return ERROR_NOT_ENOUGH_MEMORY;
    fl->folder = child;
    FUNC0( &parent->children, &fl->entry );
    return ERROR_SUCCESS;
}