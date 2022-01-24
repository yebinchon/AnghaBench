#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_19__ {struct TYPE_19__* first; int /*<<< orphan*/  offset; } ;
struct TYPE_18__ {int cluster_size; } ;
typedef  int /*<<< orphan*/  FDSC ;
typedef  TYPE_1__ DOS_FS ;
typedef  TYPE_2__ DOS_FILE ;
typedef  int /*<<< orphan*/  DIR_ENT ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__***,TYPE_2__*,scalar_t__,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_2__**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (TYPE_1__*,int) ; 
 int FUNC8 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC9(DOS_FS * fs, DOS_FILE * this, FDSC ** cp)
{
    DOS_FILE **chain;
    int i;
    uint32_t clu_num;

    chain = &this->first;
    i = 0;
    clu_num = FUNC0(this, fs);
    FUNC6();
    while (clu_num > 0 && clu_num != -1) {
	FUNC1(fs, &chain, this,
		 FUNC4(fs, clu_num) + (i % fs->cluster_size), cp);
	i += sizeof(DIR_ENT);
	if (!(i % fs->cluster_size))
	    if ((clu_num = FUNC7(fs, clu_num)) == 0 || clu_num == -1)
		break;
    }
    FUNC5();
    if (FUNC2(fs, &this->first, this->offset))
	return 0;
    if (FUNC3(fs, this->first))
	return 1;
    return FUNC8(fs, this, cp);
}