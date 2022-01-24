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
struct TYPE_7__ {int root_entries; scalar_t__ root_start; scalar_t__ root_cluster; } ;
typedef  TYPE_1__ DOS_FS ;
typedef  int /*<<< orphan*/  DOS_FILE ;
typedef  int /*<<< orphan*/  DIR_ENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ***,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fp_root ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * root ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC6(DOS_FS * fs)
{
    DOS_FILE **chain;
    int i;

    root = NULL;
    chain = &root;
    FUNC4();
    if (fs->root_cluster) {
	FUNC0(fs, &chain, NULL, 0, &fp_root);
    } else {
	for (i = 0; i < fs->root_entries; i++)
	    FUNC0(fs, &chain, NULL, fs->root_start + i * sizeof(DIR_ENT),
		     &fp_root);
    }
    FUNC3();
    (void)FUNC1(fs, &root, 0);
    if (FUNC2(fs, root))
	return 1;
    return FUNC5(fs, NULL, &fp_root);
}