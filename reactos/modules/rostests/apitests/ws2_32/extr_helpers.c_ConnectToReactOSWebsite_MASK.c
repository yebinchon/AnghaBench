#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {scalar_t__* h_addr_list; } ;
typedef  int /*<<< orphan*/  sa ;
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 struct hostent* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(SOCKET sck)
{
    int iResult;
    struct hostent* host;
    struct sockaddr_in sa;

    /* Connect to "www.reactos.org" */
    host = FUNC2("test.winehq.org");

    sa.sin_family = AF_INET;
    sa.sin_addr.s_addr = *(u_long*)host->h_addr_list[0];
    sa.sin_port = FUNC3(80);

    FUNC0(FUNC1(sck, (struct sockaddr *)&sa, sizeof(sa)));
    
    return 1;
}