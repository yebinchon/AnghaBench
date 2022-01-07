
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_5__ {scalar_t__ Count; TYPE_2__** Elements; } ;
struct TYPE_6__ {TYPE_1__ Package; } ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;


 int ACPI_FUNCTION_NAME (int ) ;
 int AcpiUtRemoveReference (TYPE_2__*) ;
 int NsRemoveElement ;

__attribute__((used)) static void
AcpiNsRemoveElement (
    ACPI_OPERAND_OBJECT *ObjDesc,
    UINT32 Index)
{
    ACPI_OPERAND_OBJECT **Source;
    ACPI_OPERAND_OBJECT **Dest;
    UINT32 Count;
    UINT32 NewCount;
    UINT32 i;


    ACPI_FUNCTION_NAME (NsRemoveElement);


    Count = ObjDesc->Package.Count;
    NewCount = Count - 1;

    Source = ObjDesc->Package.Elements;
    Dest = Source;



    for (i = 0; i < Count; i++)
    {
        if (i == Index)
        {
            AcpiUtRemoveReference (*Source);
            AcpiUtRemoveReference (*Source);
        }
        else
        {
            *Dest = *Source;
            Dest++;
        }

        Source++;
    }



    *Dest = ((void*)0);
    ObjDesc->Package.Count = NewCount;
}
