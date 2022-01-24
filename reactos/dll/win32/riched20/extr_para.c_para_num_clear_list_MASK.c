#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* next_para; int /*<<< orphan*/  para_num; int /*<<< orphan*/  fmt; } ;
struct TYPE_6__ {TYPE_3__ para; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ member; } ;
typedef  int /*<<< orphan*/  PARAFORMAT2 ;
typedef  int /*<<< orphan*/  ME_TextEditor ;
typedef  TYPE_3__ ME_Paragraph ;

/* Variables and functions */
 scalar_t__ diParagraph ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC4( ME_TextEditor *editor, ME_Paragraph *para, const PARAFORMAT2 *orig_fmt )
{
    do
    {
        FUNC1(editor, FUNC0(para));
        FUNC2( &para->para_num );
        if (para->next_para->type != diParagraph) break;
        para = &para->next_para->member.para;
    } while (FUNC3( &para->fmt, orig_fmt ));
}