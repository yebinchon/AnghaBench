
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WIRE_ORPC_EXTENT ;
struct TYPE_8__ {scalar_t__ MajorVersion; scalar_t__ MinorVersion; } ;
struct TYPE_10__ {int flags; TYPE_1__ version; int * extensions; } ;
struct TYPE_9__ {char* Buffer; int BufferLength; } ;
typedef TYPE_2__ RPC_MESSAGE ;
typedef int ORPC_EXTENT_ARRAY ;
typedef TYPE_3__ ORPCTHIS ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;


 scalar_t__ COM_MAJOR_VERSION ;
 scalar_t__ COM_MINOR_VERSION ;
 int ERR (char*,...) ;
 scalar_t__ FAILED (int ) ;
 int FIELD_OFFSET (int ,int ) ;
 int ORPCF_LOCAL ;
 int ORPCF_RESERVED1 ;
 int ORPCF_RESERVED2 ;
 int ORPCF_RESERVED3 ;
 int ORPCF_RESERVED4 ;
 int RPC_E_INVALID_HEADER ;
 int RPC_E_VERSION_MISMATCH ;
 int S_OK ;
 int WIRE_ORPCTHIS ;
 int extensions ;
 int memcpy (TYPE_3__*,char*,int) ;
 int unmarshal_ORPC_EXTENT_ARRAY (TYPE_2__*,char const*,int *,int **) ;

__attribute__((used)) static HRESULT unmarshal_ORPCTHIS(RPC_MESSAGE *msg, ORPCTHIS *orpcthis,
    ORPC_EXTENT_ARRAY *orpc_ext_array, WIRE_ORPC_EXTENT **first_wire_orpc_extent)
{
    const char *end = (char *)msg->Buffer + msg->BufferLength;

    *first_wire_orpc_extent = ((void*)0);

    if (msg->BufferLength < FIELD_OFFSET(WIRE_ORPCTHIS, extensions) + sizeof(DWORD))
    {
        ERR("invalid buffer length\n");
        return RPC_E_INVALID_HEADER;
    }

    memcpy(orpcthis, msg->Buffer, FIELD_OFFSET(WIRE_ORPCTHIS, extensions));
    msg->Buffer = (char *)msg->Buffer + FIELD_OFFSET(WIRE_ORPCTHIS, extensions);

    if ((const char *)msg->Buffer + sizeof(DWORD) > end)
        return RPC_E_INVALID_HEADER;

    if (*(DWORD *)msg->Buffer)
        orpcthis->extensions = orpc_ext_array;
    else
        orpcthis->extensions = ((void*)0);

    msg->Buffer = (char *)msg->Buffer + sizeof(DWORD);

    if (orpcthis->extensions)
    {
        HRESULT hr = unmarshal_ORPC_EXTENT_ARRAY(msg, end, orpc_ext_array,
                                                 first_wire_orpc_extent);
        if (FAILED(hr))
            return hr;
    }

    if ((orpcthis->version.MajorVersion != COM_MAJOR_VERSION) ||
        (orpcthis->version.MinorVersion > COM_MINOR_VERSION))
    {
        ERR("COM version {%d, %d} not supported\n",
            orpcthis->version.MajorVersion, orpcthis->version.MinorVersion);
        return RPC_E_VERSION_MISMATCH;
    }

    if (orpcthis->flags & ~(ORPCF_LOCAL|ORPCF_RESERVED1|ORPCF_RESERVED2|ORPCF_RESERVED3|ORPCF_RESERVED4))
    {
        ERR("invalid flags 0x%x\n", orpcthis->flags & ~(ORPCF_LOCAL|ORPCF_RESERVED1|ORPCF_RESERVED2|ORPCF_RESERVED3|ORPCF_RESERVED4));
        return RPC_E_INVALID_HEADER;
    }

    return S_OK;
}
