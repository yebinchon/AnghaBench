
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * ids; } ;
struct TYPE_7__ {int * stream; int dynamic; } ;
struct TYPE_8__ {TYPE_1__ object; TYPE_2__ string; } ;
struct TYPE_9__ {int asnType; TYPE_3__ asnValue; } ;
typedef TYPE_4__ AsnAny ;




 int ASN_NULL ;




 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;

__attribute__((used)) static void asn_any_free(AsnAny *any)
{
    switch (any->asnType)
    {
    case 130:
    case 133:
    case 128:
    case 132:
    case 129:
    {
        if (any->asnValue.string.dynamic)
        {
            HeapFree(GetProcessHeap(), 0, any->asnValue.string.stream);
            any->asnValue.string.stream = ((void*)0);
        }
        break;
    }
    case 131:
    {
        HeapFree(GetProcessHeap(), 0, any->asnValue.object.ids);
        any->asnValue.object.ids = ((void*)0);
        break;
    }
    default: break;
    }
    any->asnType = ASN_NULL;
}
