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
struct TYPE_5__ {int searchLength; } ;
struct TYPE_6__ {TYPE_1__ cParams; } ;
typedef  TYPE_2__ ZSTD_matchState_t ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const* const,size_t*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_noDict ; 

__attribute__((used)) static size_t
FUNC1 (  ZSTD_matchState_t* ms,
                            const BYTE* ip, const BYTE* const iLimit,
                                  size_t* offsetPtr)
{
    switch(ms->cParams.searchLength)
    {
    default : /* includes case 3 */
    case 4 : return FUNC0(ms, ip, iLimit, offsetPtr, 4, ZSTD_noDict);
    case 5 : return FUNC0(ms, ip, iLimit, offsetPtr, 5, ZSTD_noDict);
    case 7 :
    case 6 : return FUNC0(ms, ip, iLimit, offsetPtr, 6, ZSTD_noDict);
    }
}