
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_9__ {int idLength; size_t* ids; } ;
struct TYPE_8__ {size_t length; int dynamic; int * stream; } ;
struct TYPE_10__ {TYPE_2__ object; TYPE_1__ string; int ticks; int gauge; int counter; int counter64; int unsigned32; int number; } ;
struct TYPE_11__ {int asnType; TYPE_3__ asnValue; } ;
typedef int INT ;
typedef int BYTE ;
typedef TYPE_4__ AsnAny ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,size_t) ;
 int SNMPAPI_ERROR ;
 int SNMPAPI_NOERROR ;
 int TRUE ;
 int WARN (char*,int) ;
 int memcpy (int *,int *,size_t) ;
 int memset (TYPE_4__*,int ,int) ;

__attribute__((used)) static INT asn_any_copy(AsnAny *dst, const AsnAny *src)
{
    memset(dst, 0, sizeof(AsnAny));
    switch (src->asnType)
    {
    case 135: dst->asnValue.number = src->asnValue.number; break;
    case 128: dst->asnValue.unsigned32 = src->asnValue.unsigned32; break;
    case 137: dst->asnValue.counter64 = src->asnValue.counter64; break;
    case 138: dst->asnValue.counter = src->asnValue.counter; break;
    case 136: dst->asnValue.gauge = src->asnValue.gauge; break;
    case 129: dst->asnValue.ticks = src->asnValue.ticks; break;

    case 132:
    case 139:
    case 130:
    case 134:
    case 131:
    {
        BYTE *stream;
        UINT length = src->asnValue.string.length;

        if (!(stream = HeapAlloc(GetProcessHeap(), 0, length))) return SNMPAPI_ERROR;
        memcpy(stream, src->asnValue.string.stream, length);

        dst->asnValue.string.stream = stream;
        dst->asnValue.string.length = length;
        dst->asnValue.string.dynamic = TRUE;
        break;
    }
    case 133:
    {
        UINT *ids, i, size = src->asnValue.object.idLength * sizeof(UINT);

        if (!(ids = HeapAlloc(GetProcessHeap(), 0, size))) return SNMPAPI_ERROR;

        dst->asnValue.object.ids = ids;
        dst->asnValue.object.idLength = src->asnValue.object.idLength;

        for (i = 0; i < dst->asnValue.object.idLength; i++)
            dst->asnValue.object.ids[i] = src->asnValue.object.ids[i];
        break;
    }
    default:
    {
        WARN("unknown ASN type: %d\n", src->asnType);
        return SNMPAPI_ERROR;
    }
    }
    dst->asnType = src->asnType;
    return SNMPAPI_NOERROR;
}
