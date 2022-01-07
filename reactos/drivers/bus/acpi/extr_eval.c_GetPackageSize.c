
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG ;
typedef size_t UINT32 ;
struct TYPE_10__ {size_t Count; TYPE_3__* Elements; } ;
struct TYPE_11__ {TYPE_4__ Package; } ;
struct TYPE_8__ {int Pointer; int Length; } ;
struct TYPE_7__ {int Value; } ;
struct TYPE_9__ {int Type; TYPE_2__ String; TYPE_1__ Integer; } ;
typedef int* PULONG ;
typedef int NTSTATUS ;
typedef TYPE_5__ ACPI_OBJECT ;
typedef int ACPI_METHOD_ARGUMENT ;




 int DPRINT (char*,int,int,int ) ;
 int DPRINT1 (char*,int) ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;

__attribute__((used)) static
NTSTATUS
GetPackageSize(ACPI_OBJECT *Package,
               PULONG Count,
               PULONG Size)
{
    ULONG Length, RawLength, TotalLength;
    UINT32 i;

    TotalLength = 0;
    for (i = 0; i < Package->Package.Count; i++)
    {
        switch (Package->Package.Elements[i].Type)
        {
            case 129:
                Length = sizeof(ACPI_METHOD_ARGUMENT);
                DPRINT("Integer %lu -> %lu: %lu\n", sizeof(ULONG), Length, Package->Package.Elements[i].Integer.Value);
                TotalLength += Length;
                break;

            case 128:
                RawLength = Package->Package.Elements[i].String.Length + 1;
                Length = sizeof(ACPI_METHOD_ARGUMENT);
                if (RawLength > sizeof(ULONG))
                    Length += RawLength - sizeof(ULONG);
                DPRINT("String %lu -> %lu: '%s'\n", RawLength, Length, Package->Package.Elements[i].String.Pointer);
                TotalLength += Length;
                break;

            default:
                DPRINT1("Unsupported element type %lu\n", Package->Package.Elements[i].Type);
                return STATUS_UNSUCCESSFUL;
        }
    }

    *Count = Package->Package.Count;
    *Size = TotalLength;

    return STATUS_SUCCESS;
}
