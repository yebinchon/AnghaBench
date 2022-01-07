
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* lpCallbackData ;
typedef int UINT ;
struct TYPE_3__ {char* szTrace2; char* szTrace1; int dwCounter1; } ;
typedef int LPVOID ;
typedef int IDirectPlay4 ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int DPID ;


 int DPERR_NOMESSAGES ;
 int DP_OK ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int ) ;
 int IDirectPlayX_Receive (int *,int *,int *,int ,int ,int*) ;
 int checkHR (int ,int ) ;
 void* dpid2char (int *,int,int ) ;
 int sprintf (char*,char*,int) ;
 int strcat (char*,char*) ;

__attribute__((used)) static void check_messages( IDirectPlay4 *pDP, DPID *dpid, DWORD dpidSize,
        lpCallbackData callbackData )
{
    DPID idFrom, idTo;
    UINT i;
    DWORD dwDataSize = 1024;
    LPVOID lpData = HeapAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY, dwDataSize );
    HRESULT hr;
    char temp[5];

    callbackData->szTrace2[0] = '\0';

    i = 0;
    while ( DP_OK == (hr = IDirectPlayX_Receive( pDP, &idFrom, &idTo, 0,
                                                 lpData, &dwDataSize )) )
    {

        callbackData->szTrace1[ 3*i ] = dpid2char( dpid, dpidSize, idFrom );
        callbackData->szTrace1[ 3*i+1 ] = dpid2char( dpid, dpidSize, idTo );
        callbackData->szTrace1[ 3*i+2 ] = ',';

        sprintf( temp, "%d,", dwDataSize );
        strcat( callbackData->szTrace2, temp );

        dwDataSize = 1024;
        ++i;
    }

    checkHR( DPERR_NOMESSAGES, hr );

    callbackData->szTrace1[ 3*i ] = '\0';
    callbackData->dwCounter1 = i;


    HeapFree( GetProcessHeap(), 0, lpData );
}
