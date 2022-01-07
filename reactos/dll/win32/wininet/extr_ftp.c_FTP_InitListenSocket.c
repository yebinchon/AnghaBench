
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int socklen_t ;
struct TYPE_4__ {int sin_port; } ;
struct TYPE_5__ {int lstnSocket; TYPE_1__ lstnSocketAddress; TYPE_1__ socketAddress; } ;
typedef TYPE_2__ ftp_session_t ;
typedef int BOOL ;


 int AF_INET ;
 int FALSE ;
 int MAX_BACKLOG ;
 int SOCK_STREAM ;
 int TRACE (char*) ;
 int TRUE ;
 int bind (int,struct sockaddr*,int) ;
 int closesocket (int) ;
 int getsockname (int,struct sockaddr*,int*) ;
 int htons (int ) ;
 int init_winsock () ;
 int listen (int,int ) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static BOOL FTP_InitListenSocket(ftp_session_t *lpwfs)
{
    BOOL bSuccess = FALSE;
    socklen_t namelen = sizeof(lpwfs->lstnSocketAddress);

    TRACE("\n");

    init_winsock();
    lpwfs->lstnSocket = socket(AF_INET, SOCK_STREAM, 0);
    if (lpwfs->lstnSocket == -1)
    {
        TRACE("Unable to create listening socket\n");
            goto lend;
    }


    lpwfs->lstnSocketAddress = lpwfs->socketAddress;


    lpwfs->lstnSocketAddress.sin_port = htons(0);

    if (bind(lpwfs->lstnSocket,(struct sockaddr *) &lpwfs->lstnSocketAddress, sizeof(lpwfs->lstnSocketAddress)) == -1)
    {
        TRACE("Unable to bind socket\n");
        goto lend;
    }

    if (listen(lpwfs->lstnSocket, MAX_BACKLOG) == -1)
    {
        TRACE("listen failed\n");
        goto lend;
    }

    if (getsockname(lpwfs->lstnSocket, (struct sockaddr *) &lpwfs->lstnSocketAddress, &namelen) != -1)
        bSuccess = TRUE;

lend:
    if (!bSuccess && lpwfs->lstnSocket != -1)
    {
        closesocket(lpwfs->lstnSocket);
        lpwfs->lstnSocket = -1;
    }

    return bSuccess;
}
