#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ldmState_t ;
struct TYPE_6__ {int hashRateLog; } ;
typedef  TYPE_1__ ldmParams_t ;
struct TYPE_7__ {int offset; int checksum; } ;
typedef  TYPE_2__ ldmEntry_t ;
typedef  int /*<<< orphan*/  U64 ;
typedef  int U32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const,int const) ; 
 int FUNC1 (int /*<<< orphan*/  const,int const) ; 
 int FUNC2 (int /*<<< orphan*/  const,int const,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int const,TYPE_2__,TYPE_1__ const) ; 

__attribute__((used)) static void FUNC4(ldmState_t* ldmState,
                                             U64 const rollingHash,
                                             U32 const hBits,
                                             U32 const offset,
                                             ldmParams_t const ldmParams)
{
    U32 const tag = FUNC2(rollingHash, hBits, ldmParams.hashRateLog);
    U32 const tagMask = ((U32)1 << ldmParams.hashRateLog) - 1;
    if (tag == tagMask) {
        U32 const hash = FUNC1(rollingHash, hBits);
        U32 const checksum = FUNC0(rollingHash, hBits);
        ldmEntry_t entry;
        entry.offset = offset;
        entry.checksum = checksum;
        FUNC3(ldmState, hash, entry, ldmParams);
    }
}