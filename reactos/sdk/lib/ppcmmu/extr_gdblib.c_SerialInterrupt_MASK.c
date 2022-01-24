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
typedef  int /*<<< orphan*/  ppc_trap_frame_t ;

/* Variables and functions */
 int ActualCsum ; 
 int ComputedCsum ; 
 scalar_t__ Continue ; 
 size_t DataInAddr ; 
 int* DataInBuffer ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ParseState ; 
 int /*<<< orphan*/ * RegisterSaveArea ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int Signal ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  serport ; 

int FUNC6(int signal, ppc_trap_frame_t *tf)
{
    int ch;

    if (!FUNC4(serport)) return 0;

    Signal = signal;
    RegisterSaveArea = tf;

    do
    {
        ch = FUNC2();

        if (ch == 3) /* Break in - tehe */
        {
            Continue = 0;
            FUNC1(3);
        }
        else if (ch == '+')
        {
            /* Nothing */
        }
        else if (ch == '$')
        {
            DataInAddr = 0;
            ParseState = 0;
            ComputedCsum = 0;
            ActualCsum = 0;
        }
        else if (ch == '#' && ParseState == 0)
        {
            ParseState = 2;
        }
        else if (ParseState == 0)
        {
            ComputedCsum += ch;
            DataInBuffer[DataInAddr++] = ch;
        }
        else if (ParseState == 2)
        {
            ActualCsum = ch;
            ParseState++;
        }
        else if (ParseState == 3)
        {
            ActualCsum = FUNC5(ch) | (FUNC5(ActualCsum) << 4);
            ComputedCsum &= 255;
            ParseState = -1;
            if (ComputedCsum == ActualCsum)
            {
                ComputedCsum = 0;
                DataInBuffer[DataInAddr] = 0;
                DataInAddr = 0;
                Continue = 0;
                FUNC3('+');
                FUNC0();
            }
            else
                FUNC3('-');
        }
        else if (ParseState == -1)
            FUNC3('-');
    }
    while (!Continue);
    return 1;
}