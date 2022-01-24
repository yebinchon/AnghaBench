#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  ssl; } ;
typedef  TYPE_1__ SSLConnection ;
typedef  int /*<<< orphan*/  Connection ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static ssize_t
FUNC2(Connection *conn, char *buf, size_t buflen)
{
	SSLConnection *sslconn = (SSLConnection *) conn;

	int ret = FUNC0(sslconn->ssl, buf, buflen);

	if (ret < 0)
		FUNC1(sslconn, ret);

	return ret;
}