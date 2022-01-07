
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iProtocol; int iSocketType; int iAddressFamily; } ;
typedef TYPE_1__ WSAPROTOCOL_INFO ;


 int GetCurrentProcessId () ;
 int WSADuplicateSocket (int,int ,TYPE_1__*) ;
 int WSASocket (int ,int ,int ,TYPE_1__*,int ,int ) ;
 int vlc_dup (int) ;

__attribute__((used)) static int dup_socket(int oldfd)
{
    int newfd;

    newfd = vlc_dup(oldfd);






    return newfd;
}
