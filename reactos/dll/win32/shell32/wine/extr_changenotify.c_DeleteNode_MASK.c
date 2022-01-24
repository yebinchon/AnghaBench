#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG_PTR ;
typedef  size_t UINT ;
struct TYPE_6__ {size_t cidl; struct TYPE_6__* apidl; struct TYPE_6__* backBuffer; struct TYPE_6__* buffer; scalar_t__ pidl; int /*<<< orphan*/  entry; } ;
typedef  TYPE_1__* LPNOTIFICATIONLIST ;
typedef  TYPE_1__* LPITEMIDLIST ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _RequestTermination ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  m_hThread ; 

__attribute__((used)) static void FUNC5(LPNOTIFICATIONLIST item)
{
    UINT i;

    FUNC2("item=%p\n", item);

    /* remove item from list */
    FUNC4( &item->entry );

    /* free the item */
    for (i=0; i<item->cidl; i++)
#ifdef __REACTOS__
    {
        QueueUserAPC(_RequestTermination, m_hThread, (ULONG_PTR) &item->apidl[i] );
        WaitForSingleObjectEx(m_hThread, 100, FALSE);
#endif
        FUNC1((LPITEMIDLIST)item->apidl[i].pidl);
#ifdef __REACTOS__
        SHFree(item->apidl[i].buffer);
        SHFree(item->apidl[i].backBuffer);
    }
#endif
    FUNC1(item->apidl);
    FUNC1(item);
}