#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * cctx; int /*<<< orphan*/  buffOutSize; void* buffOut; int /*<<< orphan*/  buffInSize; void* buffIn; } ;
typedef  TYPE_1__ resources ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ZSTD_c_checksumFlag ; 
 int /*<<< orphan*/  ZSTD_c_compressionLevel ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static resources FUNC7(int cLevel)
{
    resources ress;
    ress.buffInSize = FUNC3();   /* can always read one full block */
    ress.buffOutSize= FUNC4();  /* can always flush a full block */
    ress.buffIn = FUNC6(ress.buffInSize);
    ress.buffOut= FUNC6(ress.buffOutSize);
    ress.cctx = FUNC5();
    FUNC0(ress.cctx != NULL, "ZSTD_createCCtx() failed!");

    /* Set any compression parameters you want here.
     * They will persist for every compression operation.
     * Here we set the compression level, and enable the checksum.
     */
    FUNC1( FUNC2(ress.cctx, ZSTD_c_compressionLevel, cLevel) );
    FUNC1( FUNC2(ress.cctx, ZSTD_c_checksumFlag, 1) );
    return ress;
}