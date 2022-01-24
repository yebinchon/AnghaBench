#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sockaddr_in {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char const* const,struct sockaddr_in*,int) ; 
 int FUNC1 (int,struct sockaddr_in*,int const) ; 

int
FUNC2(int sfd, const char * const addrStr, const int tlen)
{
	int result;
	struct sockaddr_in remoteAddr;

	if ((result = FUNC0(addrStr, &remoteAddr, -1)) == 0) {
		result = FUNC1(sfd, &remoteAddr, tlen);
	}
	return (result);
}