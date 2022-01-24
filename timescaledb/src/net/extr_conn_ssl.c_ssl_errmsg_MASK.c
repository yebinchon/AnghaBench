#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  errbuf ;
struct TYPE_6__ {int err; } ;
struct TYPE_5__ {unsigned long errcode; int /*<<< orphan*/ * ssl; } ;
typedef  TYPE_1__ SSLConnection ;
typedef  TYPE_2__ Connection ;

/* Variables and functions */
 char* FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (int) ; 
#define  SSL_ERROR_NONE 136 
#define  SSL_ERROR_SSL 135 
#define  SSL_ERROR_SYSCALL 134 
#define  SSL_ERROR_WANT_ACCEPT 133 
#define  SSL_ERROR_WANT_CONNECT 132 
#define  SSL_ERROR_WANT_READ 131 
#define  SSL_ERROR_WANT_WRITE 130 
#define  SSL_ERROR_WANT_X509_LOOKUP 129 
#define  SSL_ERROR_ZERO_RETURN 128 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,unsigned long) ; 
 char const* FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static const char *
FUNC5(Connection *conn)
{
	SSLConnection *sslconn = (SSLConnection *) conn;
	const char *reason;
	static char errbuf[32];
	int err = conn->err;
	unsigned long ecode = sslconn->errcode;

	/* Clear errors */
	conn->err = 0;
	sslconn->errcode = 0;

	if (NULL != sslconn->ssl)
	{
		int sslerr = FUNC2(sslconn->ssl, err);

		switch (sslerr)
		{
			case SSL_ERROR_NONE:
			case SSL_ERROR_SSL:
				/* ecode should be set and handled below */
				break;
			case SSL_ERROR_ZERO_RETURN:
				return "SSL error zero return";
			case SSL_ERROR_WANT_READ:
				return "SSL error want read";
			case SSL_ERROR_WANT_WRITE:
				return "SSL error want write";
			case SSL_ERROR_WANT_CONNECT:
				return "SSL error want connect";
			case SSL_ERROR_WANT_ACCEPT:
				return "SSL error want accept";
			case SSL_ERROR_WANT_X509_LOOKUP:
				return "SSL error want X509 lookup";
			case SSL_ERROR_SYSCALL:
				if (ecode == 0)
				{
					if (err == 0)
						return "EOF in SSL operation";
					else if (FUNC1(err))
					{
						/* reset error for plan_errmsg() */
						conn->err = err;
						return FUNC4(conn);
					}
					else
						return "unknown SSL syscall error";
				}
				return "SSL error syscall";
			default:
				break;
		}
	}

	if (ecode == 0)
	{
		/* Assume this was an error of the underlying socket */
		if (FUNC1(err))
		{
			/* reset error for plan_errmsg() */
			conn->err = err;
			return FUNC4(conn);
		}

		return "no SSL error";
	}

	reason = FUNC0(ecode);

	if (NULL != reason)
		return reason;

	FUNC3(errbuf, sizeof(errbuf), "SSL error code %lu", ecode);

	return errbuf;
}