#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* iSelectedImage; void* iImage; } ;
typedef  TYPE_1__* LPTVITEMW ;
typedef  int /*<<< orphan*/ * LPITEMIDLIST ;
typedef  int DWORD ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int SHGFI_OPENICON ; 
 int SHGFI_PIDL ; 
 int SHGFI_SMALLICON ; 
 int SHGFI_SYSICONINDEX ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 

__attribute__((used)) static void FUNC4(LPITEMIDLIST lpifq, LPTVITEMW lpTV_ITEM)
{
    LPITEMIDLIST pidlDesktop = NULL;
    DWORD flags;

    FUNC2("%p %p\n",lpifq, lpTV_ITEM);

    if (!lpifq)
    {
        pidlDesktop = FUNC3();
        lpifq = pidlDesktop;
    }

    flags = SHGFI_PIDL | SHGFI_SYSICONINDEX | SHGFI_SMALLICON;
    lpTV_ITEM->iImage = FUNC0( lpifq, flags );

    flags = SHGFI_PIDL | SHGFI_SYSICONINDEX | SHGFI_SMALLICON | SHGFI_OPENICON;
    lpTV_ITEM->iSelectedImage = FUNC0( lpifq, flags );

    if (pidlDesktop)
        FUNC1( pidlDesktop );
}