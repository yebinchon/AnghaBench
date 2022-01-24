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
typedef  size_t UInt32 ;
struct TYPE_5__ {size_t** prices; } ;
struct TYPE_6__ {TYPE_1__ repLenEnc; } ;
typedef  TYPE_2__ CLzmaEnc ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__*,size_t,size_t,size_t) ; 
 size_t LZMA_MATCH_LEN_MIN ; 

__attribute__((used)) static UInt32 FUNC1(CLzmaEnc *p, UInt32 repIndex, UInt32 len, UInt32 state, UInt32 posState)
{
  return p->repLenEnc.prices[posState][len - LZMA_MATCH_LEN_MIN] +
    FUNC0(p, repIndex, state, posState);
}