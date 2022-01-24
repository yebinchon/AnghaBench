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
typedef  int /*<<< orphan*/  t_sockaddr_storage ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  p_timeout ;
typedef  int /*<<< orphan*/  p_socket ;
typedef  int /*<<< orphan*/  SA ;

/* Variables and functions */
 int PF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 

const char *FUNC2(p_socket server, int family, p_socket client, 
    p_timeout tm)
{
	socklen_t len;
	t_sockaddr_storage addr;
	if (family == PF_INET6) {
		len = sizeof(struct sockaddr_in6);
	} else {
		len = sizeof(struct sockaddr_in);
	}
	return FUNC1(FUNC0(server, client, (SA *) &addr, 
        &len, tm));
}