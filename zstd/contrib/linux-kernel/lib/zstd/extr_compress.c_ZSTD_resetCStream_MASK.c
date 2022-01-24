#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int contentSizeFlag; } ;
struct TYPE_7__ {TYPE_1__ fParams; } ;
struct TYPE_8__ {TYPE_2__ params; } ;
typedef  TYPE_3__ ZSTD_CStream ;

/* Variables and functions */
 size_t FUNC0 (TYPE_3__*,unsigned long long) ; 

size_t FUNC1(ZSTD_CStream *zcs, unsigned long long pledgedSrcSize)
{

	zcs->params.fParams.contentSizeFlag = (pledgedSrcSize > 0);

	return FUNC0(zcs, pledgedSrcSize);
}