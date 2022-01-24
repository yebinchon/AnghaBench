#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int mask; scalar_t__ lParam; int /*<<< orphan*/  hItem; } ;
typedef  TYPE_1__ TVITEMW ;
typedef  int /*<<< orphan*/  MSIFEATURE ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HTREEITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TVIF_HANDLE ; 
 int TVIF_PARAM ; 
 int /*<<< orphan*/  TVM_GETITEMW ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static MSIFEATURE *FUNC2( HWND hwnd, HTREEITEM hItem )
{
    TVITEMW tvi;

    /* get the feature from the item */
    FUNC1( &tvi, 0, sizeof tvi );
    tvi.hItem = hItem;
    tvi.mask = TVIF_PARAM | TVIF_HANDLE;
    FUNC0( hwnd, TVM_GETITEMW, 0, (LPARAM)&tvi );
    return (MSIFEATURE *)tvi.lParam;
}