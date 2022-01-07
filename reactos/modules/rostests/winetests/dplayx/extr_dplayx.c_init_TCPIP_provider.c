
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_3__ {int dwDataSize; scalar_t__* lpData; int guidDataType; } ;
typedef scalar_t__* LPVOID ;
typedef scalar_t__ LPCSTR ;
typedef int IDirectPlayLobby3 ;
typedef int IDirectPlay4 ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;
typedef int DWORD ;
typedef TYPE_1__ DPCOMPOUNDADDRESSELEMENT ;


 int CLSCTX_ALL ;
 int CLSID_DirectPlayLobby ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,scalar_t__**) ;
 int DPAID_INet ;
 int DPAID_INetPort ;
 int DPAID_ServiceProvider ;
 scalar_t__ DPERR_BUFFERTOOSMALL ;
 int DPSPGUID_TCPIP ;
 scalar_t__ DP_OK ;
 scalar_t__ FAILED (scalar_t__) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 scalar_t__* HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,scalar_t__*) ;
 scalar_t__ IDirectPlayLobby_CreateCompoundAddress (int *,TYPE_1__*,int,scalar_t__*,int *) ;
 int IDirectPlayLobby_Release (int *) ;
 scalar_t__ IDirectPlayX_InitializeConnection (int *,scalar_t__*,int ) ;
 int IID_IDirectPlayLobby3A ;
 int SUCCEEDED (scalar_t__) ;
 int checkHR (scalar_t__,scalar_t__) ;
 int lstrlenA (scalar_t__) ;
 int ok (int ,char*) ;

__attribute__((used)) static void init_TCPIP_provider( IDirectPlay4 *pDP, LPCSTR strIPAddressString, WORD port )
{

    DPCOMPOUNDADDRESSELEMENT addressElements[3];
    LPVOID pAddress = ((void*)0);
    DWORD dwAddressSize = 0;
    IDirectPlayLobby3 *pDPL;
    HRESULT hr;

    hr = CoCreateInstance( &CLSID_DirectPlayLobby, ((void*)0), CLSCTX_ALL,
                           &IID_IDirectPlayLobby3A, (LPVOID*) &pDPL );
    ok (SUCCEEDED (hr), "CCI of CLSID_DirectPlayLobby / IID_IDirectPlayLobby3A failed\n");
    if (FAILED (hr)) return;


    addressElements[0].guidDataType = DPAID_ServiceProvider;
    addressElements[0].dwDataSize = sizeof(GUID);
    addressElements[0].lpData = (LPVOID) &DPSPGUID_TCPIP;


    addressElements[1].guidDataType = DPAID_INet;
    addressElements[1].dwDataSize = lstrlenA(strIPAddressString) + 1;
    addressElements[1].lpData = (LPVOID) strIPAddressString;


    if( port > 0 )
    {
        addressElements[2].guidDataType = DPAID_INetPort;
        addressElements[2].dwDataSize = sizeof(WORD);
        addressElements[2].lpData = &port;
    }


    hr = IDirectPlayLobby_CreateCompoundAddress( pDPL, addressElements, 2,
                                                 ((void*)0), &dwAddressSize );
    checkHR( DPERR_BUFFERTOOSMALL, hr );

    if( hr == DPERR_BUFFERTOOSMALL )
    {
        pAddress = HeapAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY, dwAddressSize );
        hr = IDirectPlayLobby_CreateCompoundAddress( pDPL, addressElements, 2,
                                                     pAddress, &dwAddressSize );
        checkHR( DP_OK, hr );
    }

    hr = IDirectPlayX_InitializeConnection( pDP, pAddress, 0 );
    checkHR( DP_OK, hr );

    HeapFree( GetProcessHeap(), 0, pAddress );
    IDirectPlayLobby_Release(pDPL);
}
