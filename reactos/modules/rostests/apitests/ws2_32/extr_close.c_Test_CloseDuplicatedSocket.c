
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int to ;
struct TYPE_6__ {int member_0; int member_1; int member_2; int member_3; } ;
struct TYPE_5__ {TYPE_3__ member_0; } ;
struct TYPE_4__ {TYPE_2__ member_0; } ;
struct sockaddr_in {int member_1; TYPE_1__ member_2; int member_0; } ;
struct sockaddr {int dummy; } ;
typedef int WSAPROTOCOL_INFOW ;
typedef scalar_t__ SOCKET ;


 int AF_INET ;
 int GetCurrentProcessId () ;
 scalar_t__ INVALID_SOCKET ;
 int IPPROTO_UDP ;
 int SOCK_DGRAM ;
 int WSADuplicateSocketW (scalar_t__,int ,int *) ;
 int WSAGetLastError () ;
 scalar_t__ WSASocketW (int ,int ,int ,int *,int ,int ) ;
 int _countof (char*) ;
 int closesocket (scalar_t__) ;
 int ok (int,char*,int,int ) ;
 int sendto (scalar_t__,char*,int,int ,struct sockaddr*,int) ;
 int skip (char*,int ) ;
 scalar_t__ socket (int ,int ,int ) ;

void Test_CloseDuplicatedSocket()
{
    char szBuf[10];
    int err;
    SOCKET sck, dup_sck;
    WSAPROTOCOL_INFOW ProtocolInfo;
    struct sockaddr_in to = { AF_INET, 2222, {{{ 0x7f, 0x00, 0x00, 0x01 }}} };


    sck = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
    if(sck == INVALID_SOCKET)
    {
        skip("socket failed %d. Aborting test.\n", WSAGetLastError());
        return;
    }

    err = sendto(sck, szBuf, _countof(szBuf), 0, (struct sockaddr *)&to, sizeof(to));
    ok(err == _countof(szBuf), "sendto err = %d %d\n", err, WSAGetLastError());

    err = WSADuplicateSocketW(sck, GetCurrentProcessId(), &ProtocolInfo);
    ok(err == 0, "WSADuplicateSocketW err = %d %d\n", err, WSAGetLastError());

    dup_sck = WSASocketW(0, 0, 0, &ProtocolInfo, 0, 0);
    if (dup_sck == INVALID_SOCKET)
    {
        skip("WSASocketW failed %d. Aborting test.\n", WSAGetLastError());
        closesocket(sck);
        return;
    }

    err = sendto(dup_sck, szBuf, _countof(szBuf), 0, (struct sockaddr *)&to, sizeof(to));
    ok(err == _countof(szBuf), "sendto err = %d %d\n", err, WSAGetLastError());

    err = closesocket(sck);
    ok(err == 0, "closesocket sck err = %d %d\n", err, WSAGetLastError());

    err = sendto(dup_sck, szBuf, _countof(szBuf), 0, (struct sockaddr *)&to, sizeof(to));
    ok(err == _countof(szBuf), "sendto err = %d %d\n", err, WSAGetLastError());

    err = closesocket(dup_sck);
    ok(err == 0, "closesocket dup_sck err = %d %d\n", err, WSAGetLastError());
    return;
}
