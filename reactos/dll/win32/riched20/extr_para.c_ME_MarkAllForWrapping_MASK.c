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
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_4__* pBuffer; } ;
struct TYPE_11__ {int /*<<< orphan*/  pLast; TYPE_3__* pFirst; } ;
struct TYPE_8__ {int /*<<< orphan*/  next_para; } ;
struct TYPE_9__ {TYPE_1__ para; } ;
struct TYPE_10__ {TYPE_2__ member; } ;
typedef  TYPE_5__ ME_TextEditor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(ME_TextEditor *editor)
{
  FUNC0(editor, editor->pBuffer->pFirst->member.para.next_para, editor->pBuffer->pLast);
}