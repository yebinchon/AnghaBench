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

/* Variables and functions */
 scalar_t__ ComputedCsum ; 
 scalar_t__ DataInAddr ; 
 int DataOutAddr ; 
 char* DataOutBuffer ; 
 int DataOutCsum ; 
 scalar_t__ PacketSent ; 
 scalar_t__ ParseState ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* hex ; 
 int /*<<< orphan*/  serport ; 

void FUNC3()
{
    int i, ch, count = 0;

    PacketSent = 0;

    FUNC1('$');
    for (i = 0; i < DataOutAddr; i++)
    {
        FUNC1(DataOutBuffer[i]);
    }
    FUNC1('#');
    FUNC1(hex[(DataOutCsum >> 4) & 15]);
    FUNC1(hex[DataOutCsum & 15]);

    while(!FUNC2(serport) && ((ch = FUNC0()) != '+') && (ch != '$'));
    if (ch == '$')
    {
        ParseState = 0;
        DataInAddr = 0;
        ComputedCsum = 0;
    }
}