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
typedef  int /*<<< orphan*/  VOID ;
typedef  int* PCHAR ;
typedef  size_t LONG ;
typedef  int CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 char* HexChars ; 

VOID
FUNC1(PCHAR Buffer)
{
    CHAR Checksum;
    LONG Count;
    CHAR ch;

    /* $<packet info>#<Checksum>. */
    FUNC0('$');
    Checksum = 0;
    Count = 0;

    while ((ch = Buffer[Count]))
    {
        FUNC0(ch);
        Checksum += ch;
        Count += 1;
    }

    FUNC0('#');
    FUNC0(HexChars[(Checksum >> 4) & 0xf]);
    FUNC0(HexChars[Checksum & 0xf]);
}