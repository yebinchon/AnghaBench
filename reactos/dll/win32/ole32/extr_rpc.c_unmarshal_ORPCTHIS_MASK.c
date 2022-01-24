#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WIRE_ORPC_EXTENT ;
struct TYPE_8__ {scalar_t__ MajorVersion; scalar_t__ MinorVersion; } ;
struct TYPE_10__ {int flags; TYPE_1__ version; int /*<<< orphan*/ * extensions; } ;
struct TYPE_9__ {char* Buffer; int BufferLength; } ;
typedef  TYPE_2__ RPC_MESSAGE ;
typedef  int /*<<< orphan*/  ORPC_EXTENT_ARRAY ;
typedef  TYPE_3__ ORPCTHIS ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ COM_MAJOR_VERSION ; 
 scalar_t__ COM_MINOR_VERSION ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ORPCF_LOCAL ; 
 int ORPCF_RESERVED1 ; 
 int ORPCF_RESERVED2 ; 
 int ORPCF_RESERVED3 ; 
 int ORPCF_RESERVED4 ; 
 int /*<<< orphan*/  RPC_E_INVALID_HEADER ; 
 int /*<<< orphan*/  RPC_E_VERSION_MISMATCH ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  WIRE_ORPCTHIS ; 
 int /*<<< orphan*/  extensions ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC5(RPC_MESSAGE *msg, ORPCTHIS *orpcthis,
    ORPC_EXTENT_ARRAY *orpc_ext_array, WIRE_ORPC_EXTENT **first_wire_orpc_extent)
{
    const char *end = (char *)msg->Buffer + msg->BufferLength;

    *first_wire_orpc_extent = NULL;

    if (msg->BufferLength < FUNC2(WIRE_ORPCTHIS, extensions) + sizeof(DWORD))
    {
        FUNC0("invalid buffer length\n");
        return RPC_E_INVALID_HEADER;
    }

    FUNC3(orpcthis, msg->Buffer, FUNC2(WIRE_ORPCTHIS, extensions));
    msg->Buffer = (char *)msg->Buffer + FUNC2(WIRE_ORPCTHIS, extensions);

    if ((const char *)msg->Buffer + sizeof(DWORD) > end)
        return RPC_E_INVALID_HEADER;

    if (*(DWORD *)msg->Buffer)
        orpcthis->extensions = orpc_ext_array;
    else
        orpcthis->extensions = NULL;

    msg->Buffer = (char *)msg->Buffer + sizeof(DWORD);

    if (orpcthis->extensions)
    {
        HRESULT hr = FUNC4(msg, end, orpc_ext_array,
                                                 first_wire_orpc_extent);
        if (FUNC1(hr))
            return hr;
    }

    if ((orpcthis->version.MajorVersion != COM_MAJOR_VERSION) ||
        (orpcthis->version.MinorVersion > COM_MINOR_VERSION))
    {
        FUNC0("COM version {%d, %d} not supported\n",
            orpcthis->version.MajorVersion, orpcthis->version.MinorVersion);
        return RPC_E_VERSION_MISMATCH;
    }

    if (orpcthis->flags & ~(ORPCF_LOCAL|ORPCF_RESERVED1|ORPCF_RESERVED2|ORPCF_RESERVED3|ORPCF_RESERVED4))
    {
        FUNC0("invalid flags 0x%x\n", orpcthis->flags & ~(ORPCF_LOCAL|ORPCF_RESERVED1|ORPCF_RESERVED2|ORPCF_RESERVED3|ORPCF_RESERVED4));
        return RPC_E_INVALID_HEADER;
    }

    return S_OK;
}