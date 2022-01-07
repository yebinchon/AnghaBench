
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 int ACPI_NUM_RTYPES ;
 int ACPI_RTYPE_INTEGER ;
 int ** UtRtypeNames ;
 int strcat (char*,int *) ;
 int strcpy (char*,char*) ;

void
AcpiUtGetExpectedReturnTypes (
    char *Buffer,
    UINT32 ExpectedBtypes)
{
    UINT32 ThisRtype;
    UINT32 i;
    UINT32 j;


    if (!ExpectedBtypes)
    {
        strcpy (Buffer, "NONE");
        return;
    }

    j = 1;
    Buffer[0] = 0;
    ThisRtype = ACPI_RTYPE_INTEGER;

    for (i = 0; i < ACPI_NUM_RTYPES; i++)
    {


        if (ExpectedBtypes & ThisRtype)
        {
            strcat (Buffer, &UtRtypeNames[i][j]);
            j = 0;
        }

        ThisRtype <<= 1;
    }
}
