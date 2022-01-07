
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;
typedef size_t ACPI_SIZE ;


 int ACPI_MOVE_16_TO_32 (int*,int *) ;
 int ACPI_MOVE_32_TO_32 (int*,int *) ;
 int AcpiOsPrintf (char*,...) ;

 int DB_DISPLAY_DATA_ONLY ;



 scalar_t__ isprint (int ) ;

void
AcpiUtDumpBuffer (
    UINT8 *Buffer,
    UINT32 Count,
    UINT32 Display,
    UINT32 BaseOffset)
{
    UINT32 i = 0;
    UINT32 j;
    UINT32 Temp32;
    UINT8 BufChar;
    UINT32 DisplayDataOnly = Display & DB_DISPLAY_DATA_ONLY;


    Display &= ~DB_DISPLAY_DATA_ONLY;
    if (!Buffer)
    {
        AcpiOsPrintf ("Null Buffer Pointer in DumpBuffer!\n");
        return;
    }

    if ((Count < 4) || (Count & 0x01))
    {
        Display = 131;
    }



    while (i < Count)
    {


        if (!DisplayDataOnly)
        {
            AcpiOsPrintf ("%8.4X: ", (BaseOffset + i));
        }



        for (j = 0; j < 16;)
        {
            if (i + j >= Count)
            {


                AcpiOsPrintf ("%*s", ((Display * 2) + 1), " ");
                j += Display;
                continue;
            }

            switch (Display)
            {
            case 131:
            default:

                AcpiOsPrintf ("%02X ", Buffer[(ACPI_SIZE) i + j]);
                break;

            case 128:

                ACPI_MOVE_16_TO_32 (&Temp32, &Buffer[(ACPI_SIZE) i + j]);
                AcpiOsPrintf ("%04X ", Temp32);
                break;

            case 130:

                ACPI_MOVE_32_TO_32 (&Temp32, &Buffer[(ACPI_SIZE) i + j]);
                AcpiOsPrintf ("%08X ", Temp32);
                break;

            case 129:

                ACPI_MOVE_32_TO_32 (&Temp32, &Buffer[(ACPI_SIZE) i + j]);
                AcpiOsPrintf ("%08X", Temp32);

                ACPI_MOVE_32_TO_32 (&Temp32, &Buffer[(ACPI_SIZE) i + j + 4]);
                AcpiOsPrintf ("%08X ", Temp32);
                break;
            }

            j += Display;
        }





        if (!DisplayDataOnly)
        {
            AcpiOsPrintf (" ");
            for (j = 0; j < 16; j++)
            {
                if (i + j >= Count)
                {
                    AcpiOsPrintf ("\n");
                    return;
                }





                if (j == 0)
                {
                    AcpiOsPrintf ("// ");
                }

                BufChar = Buffer[(ACPI_SIZE) i + j];
                if (isprint (BufChar))
                {
                    AcpiOsPrintf ("%c", BufChar);
                }
                else
                {
                    AcpiOsPrintf (".");
                }
            }



            AcpiOsPrintf ("\n");
        }
        i += 16;
    }

    return;
}
