#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ nWidth; int /*<<< orphan*/  para_num; int /*<<< orphan*/  text; scalar_t__ nRows; } ;
struct TYPE_12__ {TYPE_1__ para; } ;
struct TYPE_14__ {scalar_t__ type; TYPE_2__ member; } ;
struct TYPE_13__ {scalar_t__ nTotalWidth; int /*<<< orphan*/  total_rows; } ;
typedef  TYPE_3__ ME_TextEditor ;
typedef  TYPE_4__ ME_DisplayItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ diParagraph ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_4__*) ; 

void FUNC6(ME_TextEditor *editor, ME_DisplayItem *item)
{
    FUNC2(item->type == diParagraph);

    if (item->member.para.nWidth == editor->nTotalWidth)
    {
        item->member.para.nWidth = 0;
        editor->nTotalWidth = FUNC3(editor);
    }
    editor->total_rows -= item->member.para.nRows;
    FUNC1(item->member.para.text);
    FUNC4( &item->member.para.para_num );
    FUNC5(editor, item);
    FUNC0(item);
}