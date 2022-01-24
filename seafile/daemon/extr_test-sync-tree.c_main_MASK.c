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
struct SyncStatusTree {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_IFDIR ; 
 int /*<<< orphan*/  S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct SyncStatusTree*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct SyncStatusTree*,char*) ; 
 int FUNC3 (struct SyncStatusTree*,char*) ; 
 struct SyncStatusTree* FUNC4 () ; 

int FUNC5 (int argc, char **argv)
{
    struct SyncStatusTree *tree;
    int val;

    tree = FUNC4 ();

    FUNC1 (tree, "a/b/c.txt", S_IFREG);
    FUNC1 (tree, "a/b/c/d", S_IFDIR);
    FUNC1 (tree, "a/xxx.txt", S_IFREG);

    FUNC0 ("test after add\n");

    val = FUNC3 (tree, "a/b/c.txt");
    FUNC0 ("a/b/c.txt: %d\n", val);

    val = FUNC3 (tree, "a/b/c/d");
    FUNC0 ("a/b/c/d: %d\n", val);

    val = FUNC3 (tree, "a/d/f.foo");
    FUNC0 ("a/d/f.foo: %d\n", val);

    val = FUNC3 (tree, "a/b");
    FUNC0 ("a/b: %d\n", val);

    FUNC2 (tree, "a/b/c.txt");
    FUNC2 (tree, "a/b/c/d");
    FUNC2 (tree, "a/xxx.txt");
    FUNC2 (tree, "a/c.pdf");

    FUNC0 ("test after del\n");

    val = FUNC3 (tree, "a/b/c.txt");
    FUNC0 ("a/b/c.txt: %d\n", val);

    val = FUNC3 (tree, "a/b/c/d");
    FUNC0 ("a/b/c/d: %d\n", val);

    val = FUNC3 (tree, "a/b");
    FUNC0 ("a/b: %d\n", val);

    val = FUNC3 (tree, "a");
    FUNC0 ("a: %d\n", val);
}