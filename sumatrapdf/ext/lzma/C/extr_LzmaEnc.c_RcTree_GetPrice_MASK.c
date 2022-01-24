#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int UInt32 ;
typedef  int /*<<< orphan*/  CLzmaProb ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const,int) ; 

__attribute__((used)) static UInt32 FUNC1(const CLzmaProb *probs, int numBitLevels, UInt32 symbol, UInt32 *ProbPrices)
{
  UInt32 price = 0;
  symbol |= (1 << numBitLevels);
  while (symbol != 1)
  {
    price += FUNC0(probs[symbol >> 1], symbol & 1);
    symbol >>= 1;
  }
  return price;
}