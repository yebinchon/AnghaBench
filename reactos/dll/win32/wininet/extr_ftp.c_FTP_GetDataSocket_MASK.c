#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  saddr ;
struct TYPE_4__ {int dwFlags; } ;
struct TYPE_5__ {int pasvSocket; int lstnSocket; TYPE_1__ hdr; } ;
typedef  TYPE_2__ ftp_session_t ;
typedef  int* LPINT ;
typedef  int BOOL ;

/* Variables and functions */
 int INTERNET_FLAG_PASSIVE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static BOOL FUNC3(ftp_session_t *lpwfs, LPINT nDataSocket)
{
    struct sockaddr_in saddr;
    socklen_t addrlen = sizeof(saddr);

    FUNC0("\n");
    if (lpwfs->hdr.dwFlags & INTERNET_FLAG_PASSIVE)
    {
	*nDataSocket = lpwfs->pasvSocket;
	lpwfs->pasvSocket = -1;
    }
    else
    {
        *nDataSocket = FUNC1(lpwfs->lstnSocket, (struct sockaddr *) &saddr, &addrlen);
        FUNC2(lpwfs->lstnSocket);
        lpwfs->lstnSocket = -1;
    }
    return *nDataSocket != -1;
}