
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT32 ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ ACPI_COMPARE_NAMESEG (char*,int ) ;
 int ACPI_COPY_NAMESEG (size_t*,char*) ;
 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 size_t ACPI_NAMESEG_SIZE ;
 int ACPI_ROOT_PATHNAME ;
 int ACPI_WARNING (int ) ;
 int AE_INFO ;
 int AcpiGbl_EnableInterpreterSlack ;
 scalar_t__ AcpiUtValidNameChar (char,size_t) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int UtRepairName ;

void
AcpiUtRepairName (
    char *Name)
{
    UINT32 i;
    BOOLEAN FoundBadChar = FALSE;
    UINT32 OriginalName;


    ACPI_FUNCTION_NAME (UtRepairName);






    if (ACPI_COMPARE_NAMESEG (Name, ACPI_ROOT_PATHNAME))
    {
        return;
    }

    ACPI_COPY_NAMESEG (&OriginalName, Name);



    for (i = 0; i < ACPI_NAMESEG_SIZE; i++)
    {
        if (AcpiUtValidNameChar (Name[i], i))
        {
            continue;
        }






        Name[i] = '*';
        FoundBadChar = TRUE;
    }

    if (FoundBadChar)
    {


        if (!AcpiGbl_EnableInterpreterSlack)
        {
            ACPI_WARNING ((AE_INFO,
                "Invalid character(s) in name (0x%.8X), repaired: [%4.4s]",
                OriginalName, Name));
        }
        else
        {
            ACPI_DEBUG_PRINT ((ACPI_DB_INFO,
                "Invalid character(s) in name (0x%.8X), repaired: [%4.4s]",
                OriginalName, Name));
        }
    }
}
