#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int KeyCount; struct TYPE_7__* RootNode; int /*<<< orphan*/  DiskNeedsUpdating; scalar_t__ FirstKey; } ;
typedef  scalar_t__ PB_TREE_KEY ;
typedef  TYPE_1__* PB_TREE_FILENAME_NODE ;
typedef  TYPE_1__* PB_TREE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  B_TREE_FILENAME_NODE ;
typedef  int /*<<< orphan*/  B_TREE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TAG_NTFS ; 
 int /*<<< orphan*/  TRUE ; 

NTSTATUS
FUNC5(PB_TREE *NewTree)
{
    PB_TREE Tree = FUNC2(NonPagedPool, sizeof(B_TREE), TAG_NTFS);
    PB_TREE_FILENAME_NODE RootNode = FUNC2(NonPagedPool, sizeof(B_TREE_FILENAME_NODE), TAG_NTFS);
    PB_TREE_KEY DummyKey;

    FUNC1("CreateEmptyBTree(%p) called\n", NewTree);

    if (!Tree || !RootNode)
    {
        FUNC1("Couldn't allocate enough memory for B-Tree!\n");
        if (Tree)
            FUNC3(Tree, TAG_NTFS);
        if (RootNode)
            FUNC3(RootNode, TAG_NTFS);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    // Create the dummy key
    DummyKey = FUNC0(FALSE);
    if (!DummyKey)
    {
        FUNC1("ERROR: Failed to create dummy key!\n");
        FUNC3(Tree, TAG_NTFS);
        FUNC3(RootNode, TAG_NTFS);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    FUNC4(Tree, sizeof(B_TREE));
    FUNC4(RootNode, sizeof(B_TREE_FILENAME_NODE));

    // Setup the Tree
    RootNode->FirstKey = DummyKey;
    RootNode->KeyCount = 1;
    RootNode->DiskNeedsUpdating = TRUE;
    Tree->RootNode = RootNode;

    *NewTree = Tree;

    // Memory will be freed when DestroyBTree() is called

    return STATUS_SUCCESS;
}