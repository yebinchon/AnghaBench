#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  iProtocol; int /*<<< orphan*/  iSocketType; int /*<<< orphan*/  iAddressFamily; } ;
typedef  TYPE_1__ WSAPROTOCOL_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(int oldfd)
{
    int newfd;
#ifndef _WIN32
    newfd = FUNC3(oldfd);
#else
    WSAPROTOCOL_INFO info;
    WSADuplicateSocket (oldfd, GetCurrentProcessId (), &info);
    newfd = WSASocket (info.iAddressFamily, info.iSocketType,
                       info.iProtocol, &info, 0, 0);
#endif
    return newfd;
}