
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WIRE_ORPC_EXTENT ;
struct TYPE_8__ {int flags; int * extensions; } ;
struct TYPE_7__ {char* Buffer; int BufferLength; } ;
typedef TYPE_1__ RPC_MESSAGE ;
typedef int ORPC_EXTENT_ARRAY ;
typedef TYPE_2__ ORPCTHAT ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;


 int ERR (char*,...) ;
 scalar_t__ FAILED (int ) ;
 int FIELD_OFFSET (int ,int ) ;
 int ORPCF_LOCAL ;
 int ORPCF_RESERVED1 ;
 int ORPCF_RESERVED2 ;
 int ORPCF_RESERVED3 ;
 int ORPCF_RESERVED4 ;
 int RPC_E_INVALID_HEADER ;
 int S_OK ;
 int WIRE_ORPCTHAT ;
 int extensions ;
 int memcpy (TYPE_2__*,char*,int) ;
 int unmarshal_ORPC_EXTENT_ARRAY (TYPE_1__*,char const*,int *,int **) ;

__attribute__((used)) static HRESULT unmarshal_ORPCTHAT(RPC_MESSAGE *msg, ORPCTHAT *orpcthat,
                                  ORPC_EXTENT_ARRAY *orpc_ext_array, WIRE_ORPC_EXTENT **first_wire_orpc_extent)
{
    const char *end = (char *)msg->Buffer + msg->BufferLength;

    *first_wire_orpc_extent = ((void*)0);

    if (msg->BufferLength < FIELD_OFFSET(WIRE_ORPCTHAT, extensions) + sizeof(DWORD))
    {
        ERR("invalid buffer length\n");
        return RPC_E_INVALID_HEADER;
    }

    memcpy(orpcthat, msg->Buffer, FIELD_OFFSET(WIRE_ORPCTHAT, extensions));
    msg->Buffer = (char *)msg->Buffer + FIELD_OFFSET(WIRE_ORPCTHAT, extensions);

    if ((const char *)msg->Buffer + sizeof(DWORD) > end)
        return RPC_E_INVALID_HEADER;

    if (*(DWORD *)msg->Buffer)
        orpcthat->extensions = orpc_ext_array;
    else
        orpcthat->extensions = ((void*)0);

    msg->Buffer = (char *)msg->Buffer + sizeof(DWORD);

    if (orpcthat->extensions)
    {
        HRESULT hr = unmarshal_ORPC_EXTENT_ARRAY(msg, end, orpc_ext_array,
                                                 first_wire_orpc_extent);
        if (FAILED(hr))
            return hr;
    }

    if (orpcthat->flags & ~(ORPCF_LOCAL|ORPCF_RESERVED1|ORPCF_RESERVED2|ORPCF_RESERVED3|ORPCF_RESERVED4))
    {
        ERR("invalid flags 0x%x\n", orpcthat->flags & ~(ORPCF_LOCAL|ORPCF_RESERVED1|ORPCF_RESERVED2|ORPCF_RESERVED3|ORPCF_RESERVED4));
        return RPC_E_INVALID_HEADER;
    }

    return S_OK;
}
