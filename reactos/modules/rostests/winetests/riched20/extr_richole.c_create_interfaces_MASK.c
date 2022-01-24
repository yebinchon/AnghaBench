#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  ITextSelection ;
typedef  int /*<<< orphan*/  ITextDocument ;
typedef  int /*<<< orphan*/  IRichEditOle ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  EM_GETOLEINTERFACE ; 
 int /*<<< orphan*/  IID_ITextDocument ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(HWND *w, IRichEditOle **reOle, ITextDocument **txtDoc,
                              ITextSelection **txtSel)
{
  *w = FUNC3(NULL);
  FUNC2(*w, EM_GETOLEINTERFACE, 0, (LPARAM)reOle);
  FUNC0(*reOle, &IID_ITextDocument,
                                 (void **) txtDoc);
  FUNC1(*txtDoc, txtSel);
}