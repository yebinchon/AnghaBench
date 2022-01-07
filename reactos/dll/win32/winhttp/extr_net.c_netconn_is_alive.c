
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {int socket; } ;
typedef TYPE_1__ netconn_t ;
typedef int ULONG ;
typedef char BYTE ;
typedef int BOOL ;


 scalar_t__ EWOULDBLOCK ;
 int FALSE ;
 int FIONBIO ;
 int FIXME (char*) ;
 int MSG_DONTWAIT ;
 int MSG_PEEK ;
 int TRUE ;
 scalar_t__ WSAEWOULDBLOCK ;
 scalar_t__ WSAGetLastError () ;
 scalar_t__ errno ;
 int ioctlsocket (int ,int ,int*) ;
 int recv (int ,char*,int,int) ;

BOOL netconn_is_alive( netconn_t *netconn )
{
    FIXME("not supported on this platform\n");
    return TRUE;

}
