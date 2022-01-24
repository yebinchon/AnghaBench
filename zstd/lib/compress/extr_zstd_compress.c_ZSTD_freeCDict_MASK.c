#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_customMem ;
struct TYPE_5__ {int /*<<< orphan*/  workspace; int /*<<< orphan*/  customMem; } ;
typedef  TYPE_1__ ZSTD_CDict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  const) ; 

size_t FUNC3(ZSTD_CDict* cdict)
{
    if (cdict==NULL) return 0;   /* support free on NULL */
    {   ZSTD_customMem const cMem = cdict->customMem;
        int cdictInWorkspace = FUNC1(&cdict->workspace, cdict);
        FUNC0(&cdict->workspace, cMem);
        if (!cdictInWorkspace) {
            FUNC2(cdict, cMem);
        }
        return 0;
    }
}