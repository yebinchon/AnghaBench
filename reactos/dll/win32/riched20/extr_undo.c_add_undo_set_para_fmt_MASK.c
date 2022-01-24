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
struct TYPE_5__ {int /*<<< orphan*/  border; int /*<<< orphan*/  fmt; int /*<<< orphan*/  pos; } ;
struct TYPE_6__ {TYPE_1__ set_para_fmt; } ;
struct undo_item {TYPE_2__ u; } ;
struct TYPE_7__ {int /*<<< orphan*/  border; int /*<<< orphan*/  fmt; int /*<<< orphan*/  nCharOfs; } ;
typedef  int /*<<< orphan*/  ME_TextEditor ;
typedef  TYPE_3__ ME_Paragraph ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 struct undo_item* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  undo_set_para_fmt ; 

BOOL FUNC1( ME_TextEditor *editor, const ME_Paragraph *para )
{
    struct undo_item *undo = FUNC0( editor, undo_set_para_fmt );
    if (!undo) return FALSE;

    undo->u.set_para_fmt.pos = para->nCharOfs;
    undo->u.set_para_fmt.fmt = para->fmt;
    undo->u.set_para_fmt.border = para->border;

    return TRUE;
}