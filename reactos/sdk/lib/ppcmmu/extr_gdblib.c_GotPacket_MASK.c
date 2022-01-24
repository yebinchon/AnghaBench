#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int srr1; } ;

/* Variables and functions */
 int Continue ; 
 int /*<<< orphan*/  DataInAddr ; 
 int* DataInBuffer ; 
 int GDB_SAVE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* RegisterSaveArea ; 
 int /*<<< orphan*/  Signal ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8()
{
    int i, memaddr, memsize;

    Continue = 0;
    switch (DataInBuffer[DataInAddr++])
    {
    case 'g':
        FUNC4();
        for (i = 0; i < GDB_SAVE_SIZE; i++)
        {
            FUNC5(((int *)RegisterSaveArea)[i], 8);
        }
        FUNC1();
        break;

    case 'G':
        for (i = 0; i < sizeof(*RegisterSaveArea) / sizeof(int); i++)
        {
            ((int *)RegisterSaveArea)[i] = FUNC3(8);
        }
        FUNC2();
        break;

    case 'm':
        memaddr = FUNC3(8);
        DataInAddr++;
        memsize = FUNC3(8);
        FUNC4();
        while(memsize-- > 0)
        {
            FUNC5(*((char *)memaddr++), 2);
        }
        FUNC1();
        break;

    case 'M':
        memaddr = FUNC3(8);
        DataInAddr++;
        memsize = FUNC3(8);
        DataInAddr++;
        while(memsize-- > 0)
        {
            *((char *)memaddr++) = FUNC3(2);
        }
        FUNC2();
        break;

    case '?':
        FUNC6(Signal);
        break;

    case 'c':
        FUNC2();
        Continue = 1;
        break;

    case 'S':
        FUNC2();
        Continue = 0;
        break;

    case 's':
        RegisterSaveArea->srr1 |= 0x400;
        FUNC2();
        Continue = 1;
        FUNC7();
        break;

    case 'q':
        switch (DataInBuffer[1])
        {
        case 'S': /*upported => nothing*/
            FUNC0();
            break;

        case 'O': /*ffsets*/
            FUNC0();
            break;
        }
        break;

    default:
        FUNC0();
        break;
    }
}