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
typedef  int CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  DOS_OUTPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

VOID FUNC1(CHAR Character)
{
    switch (Character)
    {
        case '\0':
        {
            /* Nothing */
            break;
        }

        case '\b':
        {
            /* Erase the character */
            FUNC0(DOS_OUTPUT_HANDLE, '\b');
            FUNC0(DOS_OUTPUT_HANDLE, ' ');
            FUNC0(DOS_OUTPUT_HANDLE, '\b');
            break;
        }

        default:
        {
            /*
             * Check if this is a special character
             * NOTE: \r and \n are handled by the underlying driver!
             */
            if (Character < 0x20 && Character != '\r' && Character != '\n')
            {
                FUNC0(DOS_OUTPUT_HANDLE, '^');
                Character += 'A' - 1;
            }

            /* Echo the character */
            FUNC0(DOS_OUTPUT_HANDLE, Character);
        }
    }
}