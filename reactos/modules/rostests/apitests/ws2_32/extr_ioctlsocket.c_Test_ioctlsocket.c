
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WSADATA ;
typedef int ULONG ;
typedef int SOCKET ;
typedef scalar_t__ LPSTR ;


 int ConnectToReactOSWebsite (int ) ;
 int CreateSocket (int *) ;
 int FIONREAD ;
 int GetProcessHeap () ;
 int GetRequestAndWait (int ) ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__) ;
 int MAKEWORD (int,int) ;
 int SCKTEST (int) ;
 int SOCKET_ERROR ;
 int WSACleanup () ;
 int WSAStartup (int ,int *) ;
 int closesocket (int ) ;
 int ioctlsocket (int ,int ,int*) ;
 int ok (int,char*,...) ;
 int recv (int ,scalar_t__,int,int ) ;

int Test_ioctlsocket()
{
    LPSTR pszBuf;
    int iResult;
    SOCKET sck;
    ULONG BytesAvailable;
    ULONG BytesToRead;
    WSADATA wdata;


    iResult = WSAStartup(MAKEWORD(2, 2), &wdata);
    ok(iResult == 0, "WSAStartup failed. iResult = %d\n", iResult);


    BytesAvailable = 0xdeadbeef;
    iResult = ioctlsocket(0, FIONREAD, &BytesAvailable);
    ok(iResult == SOCKET_ERROR, "iResult = %d\n", iResult);
    ok(BytesAvailable == 0xdeadbeef, "BytesAvailable = %ld\n", BytesAvailable);


    if (!CreateSocket(&sck))
    {
        ok(0, "CreateSocket failed. Aborting test.\n");
        return 0;
    }


    BytesAvailable = 0xdeadbeef;
    iResult = ioctlsocket(sck, FIONREAD, &BytesAvailable);
    ok(iResult == 0, "iResult = %d\n", iResult);
    ok(BytesAvailable == 0, "BytesAvailable = %ld\n", BytesAvailable);


    if (!ConnectToReactOSWebsite(sck))
    {
        ok(0, "ConnectToReactOSWebsite failed. Aborting test.\n");
        return 0;
    }


    iResult = ioctlsocket(sck, FIONREAD, &BytesAvailable);
    ok(iResult == 0, "iResult = %d\n", iResult);
    ok(BytesAvailable == 0, "BytesAvailable = %ld\n", BytesAvailable);


    if (!GetRequestAndWait(sck))
    {
        ok(0, "GetRequestAndWait failed. Aborting test.\n");
        return 0;
    }


    SCKTEST(ioctlsocket(sck, FIONREAD, &BytesAvailable));
    ok(BytesAvailable != 0, "BytesAvailable = %ld\n", BytesAvailable);


    BytesToRead = BytesAvailable / 2;
    pszBuf = (LPSTR) HeapAlloc(GetProcessHeap(), 0, BytesToRead);
    SCKTEST(recv(sck, pszBuf, BytesToRead, 0));
    HeapFree(GetProcessHeap(), 0, pszBuf);

    BytesToRead = BytesAvailable - BytesToRead;


    SCKTEST(ioctlsocket(sck, FIONREAD, &BytesAvailable));
    ok(BytesAvailable == BytesToRead, "BytesAvailable = %ld\n", BytesAvailable);


    pszBuf = (LPSTR) HeapAlloc(GetProcessHeap(), 0, BytesToRead);
    SCKTEST(recv(sck, pszBuf, BytesToRead, 0));
    HeapFree(GetProcessHeap(), 0, pszBuf);


    SCKTEST(ioctlsocket(sck, FIONREAD, &BytesAvailable));
    ok(BytesAvailable == 0, "BytesAvailable = %ld\n", BytesAvailable);

    closesocket(sck);
    WSACleanup();
    return 1;
}
