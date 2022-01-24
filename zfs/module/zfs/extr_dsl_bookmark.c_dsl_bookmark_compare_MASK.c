#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_3__ {int zbm_creation_txg; int zbm_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  dbn_name; TYPE_1__ dbn_phys; } ;
typedef  TYPE_2__ dsl_bookmark_node_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 int ZBM_FLAG_HAS_FBN ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(const void *l, const void *r)
{
	const dsl_bookmark_node_t *ldbn = l;
	const dsl_bookmark_node_t *rdbn = r;

	int64_t cmp = FUNC0(ldbn->dbn_phys.zbm_creation_txg,
	    rdbn->dbn_phys.zbm_creation_txg);
	if (FUNC2(cmp))
		return (cmp);
	cmp = FUNC0((ldbn->dbn_phys.zbm_flags & ZBM_FLAG_HAS_FBN),
	    (rdbn->dbn_phys.zbm_flags & ZBM_FLAG_HAS_FBN));
	if (FUNC2(cmp))
		return (cmp);
	cmp = FUNC3(ldbn->dbn_name, rdbn->dbn_name);
	return (FUNC1(cmp));
}