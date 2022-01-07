
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 char* ACPI_ALLOCATE (int) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_NAMESEG_SIZE ;
 int ACPI_UINT32_MAX ;
 int AE_INFO ;
 int AML_DUAL_NAME_PREFIX ;
 int AML_MULTI_NAME_PREFIX ;
 int AML_PARENT_PREFIX ;
 int AML_ROOT_PREFIX ;
 int ExAllocateNameString ;
 int return_PTR (char*) ;

__attribute__((used)) static char *
AcpiExAllocateNameString (
    UINT32 PrefixCount,
    UINT32 NumNameSegs)
{
    char *TempPtr;
    char *NameString;
    UINT32 SizeNeeded;

    ACPI_FUNCTION_TRACE (ExAllocateNameString);







    if (PrefixCount == ACPI_UINT32_MAX)
    {


        SizeNeeded = 1 + (ACPI_NAMESEG_SIZE * NumNameSegs) + 2 + 1;
    }
    else
    {
        SizeNeeded = PrefixCount + (ACPI_NAMESEG_SIZE * NumNameSegs) + 2 + 1;
    }





    NameString = ACPI_ALLOCATE (SizeNeeded);
    if (!NameString)
    {
        ACPI_ERROR ((AE_INFO,
            "Could not allocate size %u", SizeNeeded));
        return_PTR (((void*)0));
    }

    TempPtr = NameString;



    if (PrefixCount == ACPI_UINT32_MAX)
    {
        *TempPtr++ = AML_ROOT_PREFIX;
    }
    else
    {
        while (PrefixCount--)
        {
            *TempPtr++ = AML_PARENT_PREFIX;
        }
    }




    if (NumNameSegs > 2)
    {


        *TempPtr++ = AML_MULTI_NAME_PREFIX;
        *TempPtr++ = (char) NumNameSegs;
    }
    else if (2 == NumNameSegs)
    {


        *TempPtr++ = AML_DUAL_NAME_PREFIX;
    }





    *TempPtr = 0;

    return_PTR (NameString);
}
