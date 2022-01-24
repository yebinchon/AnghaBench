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
typedef  int /*<<< orphan*/  USHORT ;
typedef  scalar_t__ ULONG ;
typedef  int UCHAR ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static USHORT FUNC1(USHORT sel, UCHAR *offset, UCHAR *pCode)
{
    pCode[0] = FUNC0((ULONG) offset + 0) & 0xFF;
    pCode[1] = FUNC0((ULONG) offset + 1) & 0xFF;

    return( *(USHORT *) pCode );
}