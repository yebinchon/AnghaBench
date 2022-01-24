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
struct TYPE_7__ {int /*<<< orphan*/  hwndParent; } ;
struct TYPE_6__ {int exStyleFlags; int styleFlags; int /*<<< orphan*/  hwndParent; int /*<<< orphan*/  hWnd; } ;
typedef  TYPE_1__ ME_TextEditor ;
typedef  int /*<<< orphan*/  LONG_PTR ;
typedef  int /*<<< orphan*/  ITextHost ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_2__ CREATESTRUCTW ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int ES_WANTRETURN ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GWL_EXSTYLE ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC5(HWND hwnd, CREATESTRUCTW *create, BOOL emulate_10)
{
    ITextHost *host = FUNC2( hwnd, create, emulate_10 );
    ME_TextEditor *editor;

    if (!host) return FALSE;

    editor = FUNC3( host, emulate_10 );
    if (!editor)
    {
        FUNC1( host );
        return FALSE;
    }

    editor->exStyleFlags = FUNC0( hwnd, GWL_EXSTYLE );
    editor->styleFlags |= FUNC0( hwnd, GWL_STYLE ) & ES_WANTRETURN;
    editor->hWnd = hwnd; /* FIXME: Remove editor's dependence on hWnd */
    editor->hwndParent = create->hwndParent;

    FUNC4( hwnd, 0, (LONG_PTR)editor );

    return TRUE;
}