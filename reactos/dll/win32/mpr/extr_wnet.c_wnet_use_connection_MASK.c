#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct use_connection_context {int flags; size_t (* pre_set_accessname ) (struct use_connection_context*,char*) ;TYPE_2__* resource; } ;
typedef  int /*<<< orphan*/  empty ;
struct TYPE_6__ {int /*<<< orphan*/  dwNetType; scalar_t__ name; } ;
typedef  TYPE_1__ WNetProvider ;
typedef  char WCHAR ;
struct TYPE_8__ {size_t numProviders; TYPE_1__* table; } ;
struct TYPE_7__ {char* lpLocalName; scalar_t__ dwType; scalar_t__ lpRemoteName; scalar_t__ lpProvider; } ;
typedef  TYPE_2__ NETRESOURCEW ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 size_t BAD_PROVIDER_INDEX ; 
 int CONNECT_INTERACTIVE ; 
 int CONNECT_REDIRECT ; 
 int CONNECT_UPDATE_PROFILE ; 
 size_t ERROR_BAD_DEV_TYPE ; 
 size_t ERROR_BAD_NET_NAME ; 
 size_t ERROR_BAD_PROVIDER ; 
 size_t ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 int /*<<< orphan*/  REG_SZ ; 
 scalar_t__ RESOURCETYPE_DISK ; 
 scalar_t__ RESOURCETYPE_PRINT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  TRUE ; 
 size_t WN_ALREADY_CONNECTED ; 
 size_t WN_NO_NETWORK ; 
 size_t WN_SUCCESS ; 
 size_t FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  connectionType ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  providerName ; 
 TYPE_5__* providerTable ; 
 int /*<<< orphan*/  providerType ; 
 int /*<<< orphan*/  remotePath ; 
 size_t FUNC7 (struct use_connection_context*,char*) ; 
 int /*<<< orphan*/  userName ; 
 size_t FUNC8 (struct use_connection_context*,TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD FUNC9( struct use_connection_context *ctxt )
{
    WNetProvider *provider = NULL;
    DWORD index, ret = WN_NO_NETWORK;
    BOOL redirect = FALSE;
    WCHAR letter[3] = {'Z', ':', 0};
    NETRESOURCEW netres;

    if (!providerTable || providerTable->numProviders == 0)
        return WN_NO_NETWORK;

    if (!ctxt->resource)
        return ERROR_INVALID_PARAMETER;
    netres = *ctxt->resource;

    if (!netres.lpLocalName && (ctxt->flags & CONNECT_REDIRECT))
    {
        if (netres.dwType != RESOURCETYPE_DISK && netres.dwType != RESOURCETYPE_PRINT)
            return ERROR_BAD_DEV_TYPE;

        if (netres.dwType == RESOURCETYPE_PRINT)
        {
            FUNC0("Local device selection is not implemented for printers.\n");
            return WN_NO_NETWORK;
        }

        redirect = TRUE;
        netres.lpLocalName = letter;
    }

    if (ctxt->flags & CONNECT_INTERACTIVE)
        return ERROR_BAD_NET_NAME;

    if ((ret = ctxt->pre_set_accessname(ctxt, netres.lpLocalName)))
        return ret;

    if (netres.lpProvider)
    {
        index = FUNC5(netres.lpProvider);
        if (index == BAD_PROVIDER_INDEX)
            return ERROR_BAD_PROVIDER;

        provider = &providerTable->table[index];
        ret = FUNC8(ctxt, &netres, provider, redirect);
    }
    else
    {
        for (index = 0; index < providerTable->numProviders; index++)
        {
            provider = &providerTable->table[index];
            ret = FUNC8(ctxt, &netres, provider, redirect);
            if (ret == WN_SUCCESS || ret == WN_ALREADY_CONNECTED)
                break;
        }
    }

    if (ret == WN_SUCCESS && ctxt->flags & CONNECT_UPDATE_PROFILE)
    {
        HKEY user_profile;

        if (netres.dwType == RESOURCETYPE_PRINT)
        {
            FUNC0("Persistent connection are not supported for printers\n");
            return ret;
        }

        if (FUNC3(KEY_ALL_ACCESS, &user_profile) == ERROR_SUCCESS)
        {
            HKEY network;
            WCHAR subkey[10] = {'N', 'e', 't', 'w', 'o', 'r', 'k', '\\', netres.lpLocalName[0], 0};

            if (FUNC2(user_profile, subkey, 0, NULL, REG_OPTION_NON_VOLATILE,
                                KEY_ALL_ACCESS, NULL, &network, NULL) == ERROR_SUCCESS)
            {
                DWORD dword_arg = RESOURCETYPE_DISK;
                DWORD len = (FUNC6(provider->name) + 1) * sizeof(WCHAR);
                static const WCHAR empty[1] = {0};

                FUNC4(network, connectionType, 0, REG_DWORD, (const BYTE *)&dword_arg, sizeof(DWORD));
                FUNC4(network, providerName, 0, REG_SZ, (const BYTE *)provider->name, len);
                FUNC4(network, providerType, 0, REG_DWORD, (const BYTE *)&provider->dwNetType, sizeof(DWORD));
                len = (FUNC6(netres.lpRemoteName) + 1) * sizeof(WCHAR);
                FUNC4(network, remotePath, 0, REG_SZ, (const BYTE *)netres.lpRemoteName, len);
                len = sizeof(empty);
                FUNC4(network, userName, 0, REG_SZ, (const BYTE *)empty, len);
                FUNC1(network);
            }

            FUNC1(user_profile);
        }
    }

    return ret;
}