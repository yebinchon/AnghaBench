
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef size_t UINT32 ;


 size_t AML_TYPE_EXEC_6A_0T_1R ;
 int * AcpiGbl_ArgumentCount ;

UINT8
AcpiPsGetArgumentCount (
    UINT32 OpType)
{

    if (OpType <= AML_TYPE_EXEC_6A_0T_1R)
    {
        return (AcpiGbl_ArgumentCount[OpType]);
    }

    return (0);
}
