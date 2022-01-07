
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;


 char* ACPI_ALLOCATE_ZEROED (scalar_t__) ;
 int ACPI_FREE (char*) ;
 scalar_t__ ACPI_NAMESEG_SIZE ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
AcpiNsNormalizePathname (
    char *OriginalPath)
{
    char *InputPath = OriginalPath;
    char *NewPathBuffer;
    char *NewPath;
    UINT32 i;




    NewPathBuffer = ACPI_ALLOCATE_ZEROED (strlen (InputPath) + 1);
    NewPath = NewPathBuffer;
    if (!NewPathBuffer)
    {
        return;
    }



    if (*InputPath == '\\')
    {
        *NewPath = *InputPath;
        NewPath++;
        InputPath++;
    }

    while (*InputPath == '^')
    {
        *NewPath = *InputPath;
        NewPath++;
        InputPath++;
    }



    while (*InputPath)
    {


        for (i = 0; (i < ACPI_NAMESEG_SIZE) && *InputPath; i++)
        {
            if ((i == 0) || (*InputPath != '_'))
            {
                *NewPath = *InputPath;
                NewPath++;
            }

            InputPath++;
        }



        if (*InputPath == '.')
        {
            *NewPath = *InputPath;
            NewPath++;
            InputPath++;
        }
    }

    *NewPath = 0;
    strcpy (OriginalPath, NewPathBuffer);
    ACPI_FREE (NewPathBuffer);
}
