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
typedef  int /*<<< orphan*/  SSLConnection ;
typedef  int /*<<< orphan*/  Connection ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,char const*,int) ; 

__attribute__((used)) static int
FUNC2(Connection *conn, const char *host, const char *servname, int port)
{
	int ret;

	/* First do the base connection setup */
	ret = FUNC1(conn, host, servname, port);

	if (ret < 0)
		return -1;

	return FUNC0((SSLConnection *) conn);
}