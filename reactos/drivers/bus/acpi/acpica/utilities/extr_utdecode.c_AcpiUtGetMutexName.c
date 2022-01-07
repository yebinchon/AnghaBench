
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT32 ;


 size_t ACPI_MAX_MUTEX ;
 char const** AcpiGbl_MutexNames ;

const char *
AcpiUtGetMutexName (
    UINT32 MutexId)
{

    if (MutexId > ACPI_MAX_MUTEX)
    {
        return ("Invalid Mutex ID");
    }

    return (AcpiGbl_MutexNames[MutexId]);
}
