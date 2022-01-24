#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ cpMin; scalar_t__ cpMax; } ;
struct TYPE_12__ {int nEventMask; int /*<<< orphan*/  texthost; TYPE_1__ notified_cr; } ;
struct TYPE_10__ {int /*<<< orphan*/  code; scalar_t__ idFrom; int /*<<< orphan*/ * hwndFrom; } ;
struct TYPE_11__ {int seltyp; TYPE_2__ nmhdr; TYPE_1__ chrg; } ;
typedef  TYPE_3__ SELCHANGE ;
typedef  TYPE_4__ ME_TextEditor ;

/* Variables and functions */
 int ENM_SELCHANGE ; 
 int /*<<< orphan*/  EN_SELCHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,scalar_t__*,scalar_t__*) ; 
 int SEL_EMPTY ; 
 int SEL_MULTICHAR ; 
 int SEL_TEXT ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,scalar_t__,int,char*,char*) ; 

void FUNC4(ME_TextEditor *editor)
{
  SELCHANGE sc;

  sc.nmhdr.hwndFrom = NULL;
  sc.nmhdr.idFrom = 0;
  sc.nmhdr.code = EN_SELCHANGE;
  FUNC2(editor, &sc.chrg.cpMin, &sc.chrg.cpMax);
  sc.seltyp = SEL_EMPTY;
  if (sc.chrg.cpMin != sc.chrg.cpMax)
    sc.seltyp |= SEL_TEXT;
  if (sc.chrg.cpMin < sc.chrg.cpMax+1) /* what were RICHEDIT authors thinking ? */
    sc.seltyp |= SEL_MULTICHAR;

  if (sc.chrg.cpMin != editor->notified_cr.cpMin || sc.chrg.cpMax != editor->notified_cr.cpMax)
  {
    FUNC1(editor);

    editor->notified_cr = sc.chrg;

    if (editor->nEventMask & ENM_SELCHANGE)
    {
      FUNC3("cpMin=%d cpMax=%d seltyp=%d (%s %s)\n",
            sc.chrg.cpMin, sc.chrg.cpMax, sc.seltyp,
            (sc.seltyp & SEL_TEXT) ? "SEL_TEXT" : "",
            (sc.seltyp & SEL_MULTICHAR) ? "SEL_MULTICHAR" : "");
      FUNC0(editor->texthost, sc.nmhdr.code, &sc);
    }
  }
}