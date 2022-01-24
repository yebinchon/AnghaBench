#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  params ;
struct TYPE_5__ {int contentSizeFlag; } ;
struct TYPE_6__ {TYPE_1__ fParams; int /*<<< orphan*/  cParams; } ;
typedef  TYPE_2__ ZSTD_parameters ;
typedef  int /*<<< orphan*/  ZSTD_compressionParameters ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long long,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ZSTD_parameters FUNC3(int compressionLevel, unsigned long long srcSizeHint, size_t dictSize) {
    ZSTD_parameters params;
    ZSTD_compressionParameters const cParams = FUNC1(compressionLevel, srcSizeHint, dictSize);
    FUNC0(5, "ZSTD_getParams (cLevel=%i)", compressionLevel);
    FUNC2(&params, 0, sizeof(params));
    params.cParams = cParams;
    params.fParams.contentSizeFlag = 1;
    return params;
}