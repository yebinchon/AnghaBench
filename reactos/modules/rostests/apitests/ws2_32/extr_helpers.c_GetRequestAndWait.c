
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd_set {int dummy; } ;
typedef int SOCKET ;


 int FD_SET (int ,struct fd_set*) ;
 int FD_ZERO (struct fd_set*) ;
 int SCKTEST (int ) ;
 int SD_SEND ;
 int ok (int,char*,int) ;
 int select (int ,struct fd_set*,int *,int *,int *) ;
 int send (int ,char const*,int,int ) ;
 int shutdown (int ,int ) ;
 int strlen (char const*) ;

int GetRequestAndWait(SOCKET sck)
{
    const char szGetRequest[] = "GET / HTTP/1.0\r\n\r\n";
    int iResult;
    struct fd_set readable;


    SCKTEST(send(sck, szGetRequest, strlen(szGetRequest), 0));
    ok(iResult == strlen(szGetRequest), "iResult = %d\n", iResult);





    FD_ZERO(&readable);
    FD_SET(sck, &readable);

    SCKTEST(select(0, &readable, ((void*)0), ((void*)0), ((void*)0)));

    return 1;
}
