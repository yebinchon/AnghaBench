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
typedef  int ULONG ;
typedef  scalar_t__ PCHAR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  GspHex2MemGetContent ; 
 int FUNC0 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static PCHAR
FUNC1(PCHAR Buffer, PCHAR Address, ULONG Count, BOOLEAN MayFault)
{
    Count = FUNC0(Address, Count, MayFault, GspHex2MemGetContent, Buffer);
    return Buffer + 2 * Count;
}