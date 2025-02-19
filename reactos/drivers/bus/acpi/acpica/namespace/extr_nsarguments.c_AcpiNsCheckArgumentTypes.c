
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t UINT8 ;
typedef size_t UINT32 ;
typedef int UINT16 ;
struct TYPE_13__ {size_t ParamCount; TYPE_5__* Node; int FullPathname; TYPE_4__** Parameters; TYPE_2__* Predefined; } ;
struct TYPE_12__ {int Flags; } ;
struct TYPE_10__ {size_t Type; } ;
struct TYPE_11__ {TYPE_3__ Common; } ;
struct TYPE_8__ {int ArgumentList; } ;
struct TYPE_9__ {TYPE_1__ Info; } ;
typedef TYPE_6__ ACPI_EVALUATE_INFO ;


 int ACPI_WARN_ALWAYS ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_INFO ;
 int ANOBJ_EVALUATED ;
 int AcpiUtGetTypeName (size_t) ;
 size_t METHOD_GET_ARG_COUNT (int ) ;
 size_t METHOD_GET_NEXT_TYPE (int ) ;

void
AcpiNsCheckArgumentTypes (
    ACPI_EVALUATE_INFO *Info)
{
    UINT16 ArgTypeList;
    UINT8 ArgCount;
    UINT8 ArgType;
    UINT8 UserArgType;
    UINT32 i;
    if (!Info->Predefined || (Info->Node->Flags & ANOBJ_EVALUATED))
    {
        return;
    }

    ArgTypeList = Info->Predefined->Info.ArgumentList;
    ArgCount = METHOD_GET_ARG_COUNT (ArgTypeList);



    for (i = 0; ((i < ArgCount) && (i < Info->ParamCount)); i++)
    {
        ArgType = METHOD_GET_NEXT_TYPE (ArgTypeList);
        UserArgType = Info->Parameters[i]->Common.Type;

        if (UserArgType != ArgType)
        {
            ACPI_WARN_PREDEFINED ((AE_INFO, Info->FullPathname, ACPI_WARN_ALWAYS,
                "Argument #%u type mismatch - "
                "Found [%s], ACPI requires [%s]", (i + 1),
                AcpiUtGetTypeName (UserArgType),
                AcpiUtGetTypeName (ArgType)));



            Info->Node->Flags |= ANOBJ_EVALUATED;
        }
    }
}
