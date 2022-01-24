#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ ULONG ;
struct TYPE_8__ {scalar_t__ KeyCount; TYPE_1__* FirstKey; } ;
struct TYPE_7__ {struct TYPE_7__* NextKey; } ;
typedef  TYPE_1__* PB_TREE_KEY ;
typedef  TYPE_2__* PB_TREE_FILENAME_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  TAG_NTFS ; 

VOID
FUNC3(PB_TREE_FILENAME_NODE Node)
{
    PB_TREE_KEY NextKey;
    PB_TREE_KEY CurrentKey = Node->FirstKey;
    ULONG i;
    for (i = 0; i < Node->KeyCount; i++)
    {
        FUNC2(CurrentKey);
        NextKey = CurrentKey->NextKey;
        FUNC0(CurrentKey);
        CurrentKey = NextKey;
    }

    FUNC2(NextKey == NULL);

    FUNC1(Node, TAG_NTFS);
}