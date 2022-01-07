
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOLEAN ;
typedef scalar_t__ ACPI_OBJECT_TYPE ;


 scalar_t__ ACPI_TYPE_LOCAL_MAX ;
 int FALSE ;
 int TRUE ;

BOOLEAN
AcpiUtValidObjectType (
    ACPI_OBJECT_TYPE Type)
{

    if (Type > ACPI_TYPE_LOCAL_MAX)
    {


        return (FALSE);
    }

    return (TRUE);
}
