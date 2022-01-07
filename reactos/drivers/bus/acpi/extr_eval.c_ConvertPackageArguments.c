
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_10__ {size_t Count; TYPE_3__* Elements; } ;
struct TYPE_11__ {TYPE_4__ Package; } ;
struct TYPE_8__ {int Length; int Pointer; } ;
struct TYPE_7__ {int Value; } ;
struct TYPE_9__ {int Type; TYPE_2__ String; TYPE_1__ Integer; } ;
typedef int NTSTATUS ;
typedef TYPE_5__ ACPI_OBJECT ;
typedef int ACPI_METHOD_ARGUMENT ;


 int * ACPI_METHOD_NEXT_ARGUMENT (int *) ;
 int ACPI_METHOD_SET_ARGUMENT_INTEGER (int *,int ) ;
 int ACPI_METHOD_SET_ARGUMENT_STRING (int *,int ) ;


 int DPRINT (char*,int) ;
 int DPRINT1 (char*,int) ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;

__attribute__((used)) static
NTSTATUS
ConvertPackageArguments(ACPI_METHOD_ARGUMENT *Argument,
                        ACPI_OBJECT *Package)
{
    ACPI_METHOD_ARGUMENT *Ptr;
    UINT32 i;

    Ptr = Argument;
    for (i = 0; i < Package->Package.Count; i++)
    {
        switch (Package->Package.Elements[i].Type)
        {
            case 129:
                DPRINT("Integer %lu\n", sizeof(ACPI_METHOD_ARGUMENT));
                ACPI_METHOD_SET_ARGUMENT_INTEGER(Ptr, Package->Package.Elements[i].Integer.Value);
                break;

            case 128:
                DPRINT("String %lu\n", Package->Package.Elements[i].String.Length);
                ACPI_METHOD_SET_ARGUMENT_STRING(Ptr, Package->Package.Elements[i].String.Pointer);
                break;

            default:
                DPRINT1("Unsupported element type %lu\n", Package->Package.Elements[i].Type);
                return STATUS_UNSUCCESSFUL;
        }

        Ptr = ACPI_METHOD_NEXT_ARGUMENT(Ptr);
    }

    return STATUS_SUCCESS;
}
