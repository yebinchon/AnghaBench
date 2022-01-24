#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int pos; int len; int flags; int /*<<< orphan*/ * style; scalar_t__* str; } ;
struct TYPE_4__ {TYPE_1__ insert_run; } ;
struct undo_item {TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  ME_TextEditor ;
typedef  int /*<<< orphan*/  ME_Style ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 struct undo_item* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  undo_insert_run ; 

BOOL FUNC5( ME_TextEditor *editor, int pos, const WCHAR *str, int len, int flags, ME_Style *style )
{
    struct undo_item *undo = FUNC2( editor, undo_insert_run );
    if (!undo) return FALSE;

    undo->u.insert_run.str = FUNC3( (len + 1) * sizeof(WCHAR) );
    if (!undo->u.insert_run.str)
    {
        FUNC1( editor );
        return FALSE;
    }
    FUNC4( undo->u.insert_run.str, str, len * sizeof(WCHAR) );
    undo->u.insert_run.str[len] = 0;
    undo->u.insert_run.pos = pos;
    undo->u.insert_run.len = len;
    undo->u.insert_run.flags = flags;
    undo->u.insert_run.style = style;
    FUNC0( style );
    return TRUE;
}