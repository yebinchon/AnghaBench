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
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int UINT32 ;
typedef  size_t ACPI_SIZE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
#define  DB_BYTE_DISPLAY 131 
 int DB_DISPLAY_DATA_ONLY ; 
#define  DB_DWORD_DISPLAY 130 
#define  DB_QWORD_DISPLAY 129 
#define  DB_WORD_DISPLAY 128 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4 (
    UINT8                   *Buffer,
    UINT32                  Count,
    UINT32                  Display,
    UINT32                  BaseOffset)
{
    UINT32                  i = 0;
    UINT32                  j;
    UINT32                  Temp32;
    UINT8                   BufChar;
    UINT32                  DisplayDataOnly = Display & DB_DISPLAY_DATA_ONLY;


    Display &= ~DB_DISPLAY_DATA_ONLY;
    if (!Buffer)
    {
        FUNC2 ("Null Buffer Pointer in DumpBuffer!\n");
        return;
    }

    if ((Count < 4) || (Count & 0x01))
    {
        Display = DB_BYTE_DISPLAY;
    }

    /* Nasty little dump buffer routine! */

    while (i < Count)
    {
        /* Print current offset */

        if (!DisplayDataOnly)
        {
            FUNC2 ("%8.4X: ", (BaseOffset + i));
        }

        /* Print 16 hex chars */

        for (j = 0; j < 16;)
        {
            if (i + j >= Count)
            {
                /* Dump fill spaces */

                FUNC2 ("%*s", ((Display * 2) + 1), " ");
                j += Display;
                continue;
            }

            switch (Display)
            {
            case DB_BYTE_DISPLAY:
            default:    /* Default is BYTE display */

                FUNC2 ("%02X ", Buffer[(ACPI_SIZE) i + j]);
                break;

            case DB_WORD_DISPLAY:

                FUNC0 (&Temp32, &Buffer[(ACPI_SIZE) i + j]);
                FUNC2 ("%04X ", Temp32);
                break;

            case DB_DWORD_DISPLAY:

                FUNC1 (&Temp32, &Buffer[(ACPI_SIZE) i + j]);
                FUNC2 ("%08X ", Temp32);
                break;

            case DB_QWORD_DISPLAY:

                FUNC1 (&Temp32, &Buffer[(ACPI_SIZE) i + j]);
                FUNC2 ("%08X", Temp32);

                FUNC1 (&Temp32, &Buffer[(ACPI_SIZE) i + j + 4]);
                FUNC2 ("%08X ", Temp32);
                break;
            }

            j += Display;
        }

        /*
         * Print the ASCII equivalent characters but watch out for the bad
         * unprintable ones (printable chars are 0x20 through 0x7E)
         */
        if (!DisplayDataOnly)
        {
            FUNC2 (" ");
            for (j = 0; j < 16; j++)
            {
                if (i + j >= Count)
                {
                    FUNC2 ("\n");
                    return;
                }

                /*
                 * Add comment characters so rest of line is ignored when
                 * compiled
                 */
                if (j == 0)
                {
                    FUNC2 ("// ");
                }

                BufChar = Buffer[(ACPI_SIZE) i + j];
                if (FUNC3 (BufChar))
                {
                    FUNC2 ("%c", BufChar);
                }
                else
                {
                    FUNC2 (".");
                }
            }

            /* Done with that line. */

            FUNC2 ("\n");
        }
        i += 16;
    }

    return;
}