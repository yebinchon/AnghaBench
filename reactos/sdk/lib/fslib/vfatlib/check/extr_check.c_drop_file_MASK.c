#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_11__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  lfn_offset; scalar_t__ lfn; } ;
struct TYPE_10__ {scalar_t__ data_clusters; } ;
typedef  TYPE_1__ DOS_FS ;
typedef  TYPE_2__ DOS_FILE ;

/* Variables and functions */
 int /*<<< orphan*/  DELETED_FLAG ; 
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  n_files ; 
 int /*<<< orphan*/ * name ; 
 scalar_t__ FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(DOS_FS * fs, DOS_FILE * file)
{
    uint32_t cluster;

    FUNC1(file, name[0], DELETED_FLAG);
    if (file->lfn)
	FUNC2(file->lfn_offset, file->offset);
    for (cluster = FUNC0(file, fs); cluster > 0 && cluster <
	 fs->data_clusters + 2; cluster = FUNC3(fs, cluster))
	FUNC4(fs, cluster, NULL);
    --n_files;
}