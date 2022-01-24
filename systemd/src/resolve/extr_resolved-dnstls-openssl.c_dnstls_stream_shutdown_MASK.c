#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  errbuf ;
struct TYPE_14__ {int shutdown; TYPE_4__* ssl; } ;
struct TYPE_15__ {scalar_t__ dnstls_events; TYPE_3__ dnstls_data; TYPE_2__* server; struct TYPE_15__* encrypted; } ;
struct TYPE_12__ {int /*<<< orphan*/ * session; } ;
struct TYPE_13__ {TYPE_1__ dnstls_data; } ;
typedef  int /*<<< orphan*/  SSL_SESSION ;
typedef  TYPE_4__ DnsStream ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ EPOLLIN ; 
 scalar_t__ EPOLLOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int SSL_ERROR_SYSCALL ; 
 int SSL_ERROR_WANT_READ ; 
 int /*<<< orphan*/  SSL_ERROR_WANT_WRITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_4__*) ; 
 int FUNC5 (TYPE_4__*,int) ; 
 int FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int FUNC9 (TYPE_4__*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,char*) ; 

int FUNC12(DnsStream *stream, int error) {
        int ssl_error, r;
        SSL_SESSION *s;

        FUNC7(stream);
        FUNC7(stream->encrypted);
        FUNC7(stream->dnstls_data.ssl);

        if (stream->server) {
                s = FUNC4(stream->dnstls_data.ssl);
                if (s) {
                        if (stream->server->dnstls_data.session)
                                FUNC3(stream->server->dnstls_data.session);

                        stream->server->dnstls_data.session = s;
                }
        }

        if (error == ETIMEDOUT) {
                FUNC0();
                r = FUNC6(stream->dnstls_data.ssl);
                if (r == 0) {
                        if (!stream->dnstls_data.shutdown) {
                                stream->dnstls_data.shutdown = true;
                                FUNC8(stream);
                        }

                        stream->dnstls_events = 0;

                        r = FUNC9(stream);
                        if (r < 0)
                                return r;

                        return -EAGAIN;
                } else if (r < 0) {
                        ssl_error = FUNC5(stream->dnstls_data.ssl, r);
                        if (FUNC2(ssl_error, SSL_ERROR_WANT_READ, SSL_ERROR_WANT_WRITE)) {
                                stream->dnstls_events = ssl_error == SSL_ERROR_WANT_READ ? EPOLLIN : EPOLLOUT;
                                r = FUNC9(stream);
                                if (r < 0 && r != -EAGAIN)
                                        return r;

                                if (!stream->dnstls_data.shutdown) {
                                        stream->dnstls_data.shutdown = true;
                                        FUNC8(stream);
                                }
                                return -EAGAIN;
                        } else if (ssl_error == SSL_ERROR_SYSCALL) {
                                if (errno > 0)
                                        FUNC11(errno, "Failed to invoke SSL_shutdown, ignoring: %m");
                        } else {
                                char errbuf[256];

                                FUNC1(ssl_error, errbuf, sizeof(errbuf));
                                FUNC10("Failed to invoke SSL_shutdown, ignoring: %s", errbuf);
                        }
                }

                stream->dnstls_events = 0;
                r = FUNC9(stream);
                if (r < 0)
                        return r;
        }

        return 0;
}