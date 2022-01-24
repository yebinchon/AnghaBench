#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ size; } ;
struct TYPE_13__ {scalar_t__ handshake; int shutdown; TYPE_4__* session; } ;
struct TYPE_14__ {TYPE_3__ dnstls_data; TYPE_2__* server; struct TYPE_14__* encrypted; } ;
struct TYPE_11__ {TYPE_6__ session_data; } ;
struct TYPE_12__ {TYPE_1__ dnstls_data; } ;
typedef  TYPE_4__ DnsStream ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int GNUTLS_E_AGAIN ; 
 scalar_t__ GNUTLS_E_SUCCESS ; 
 int /*<<< orphan*/  GNUTLS_SHUT_RDWR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

int FUNC7(DnsStream *stream, int error) {
        int r;

        FUNC1(stream);
        FUNC1(stream->encrypted);
        FUNC1(stream->dnstls_data.session);

        /* Store TLS Ticket for faster successive TLS handshakes */
        if (stream->server && stream->server->dnstls_data.session_data.size == 0 && stream->dnstls_data.handshake == GNUTLS_E_SUCCESS)
                FUNC4(stream->dnstls_data.session, &stream->server->dnstls_data.session_data);

        if (FUNC0(error, ETIMEDOUT, 0)) {
                r = FUNC3(stream->dnstls_data.session, GNUTLS_SHUT_RDWR);
                if (r == GNUTLS_E_AGAIN) {
                        if (!stream->dnstls_data.shutdown) {
                                stream->dnstls_data.shutdown = true;
                                FUNC2(stream);
                                return -EAGAIN;
                        }
                } else if (r < 0)
                        FUNC6("Failed to invoke gnutls_bye: %s", FUNC5(r));
        }

        return 0;
}