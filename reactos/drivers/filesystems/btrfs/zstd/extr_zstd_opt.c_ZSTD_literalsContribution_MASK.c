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
typedef  int /*<<< orphan*/  optState_t ;
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const* const,int) ; 
 int FUNC1 (int /*<<< orphan*/  const* const,int /*<<< orphan*/  const,int /*<<< orphan*/  const* const,int) ; 

__attribute__((used)) static int FUNC2(const BYTE* const literals, U32 const litLength,
                                     const optState_t* const optPtr,
                                     int optLevel)
{
    int const contribution = FUNC1(literals, litLength, optPtr, optLevel)
                           + FUNC0(litLength, optPtr, optLevel);
    return contribution;
}