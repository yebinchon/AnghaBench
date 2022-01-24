#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_9__ {int shutdown; int handshake; TYPE_2__* session; } ;
struct TYPE_10__ {void* dnstls_events; TYPE_1__ dnstls_data; struct TYPE_10__* encrypted; } ;
typedef  TYPE_2__ DnsStream ;

/* Variables and functions */
 int DNSTLS_STREAM_CLOSED ; 
 int EAGAIN ; 
 int ECONNREFUSED ; 
 void* EPOLLIN ; 
 void* EPOLLOUT ; 
 int GNUTLS_E_AGAIN ; 
 int /*<<< orphan*/  GNUTLS_SHUT_RDWR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

int FUNC8(DnsStream *stream, uint32_t revents) {
        int r;

        FUNC0(stream);
        FUNC0(stream->encrypted);
        FUNC0(stream->dnstls_data.session);

        if (stream->dnstls_data.shutdown) {
                r = FUNC2(stream->dnstls_data.session, GNUTLS_SHUT_RDWR);
                if (r == GNUTLS_E_AGAIN) {
                        stream->dnstls_events = FUNC5(stream->dnstls_data.session) == 1 ? EPOLLOUT : EPOLLIN;
                        return -EAGAIN;
                } else if (r < 0)
                        FUNC7("Failed to invoke gnutls_bye: %s", FUNC6(r));

                stream->dnstls_events = 0;
                stream->dnstls_data.shutdown = false;
                FUNC1(stream);
                return DNSTLS_STREAM_CLOSED;
        } else if (stream->dnstls_data.handshake < 0) {
                stream->dnstls_data.handshake = FUNC4(stream->dnstls_data.session);
                if (stream->dnstls_data.handshake == GNUTLS_E_AGAIN) {
                        stream->dnstls_events = FUNC5(stream->dnstls_data.session) == 1 ? EPOLLOUT : EPOLLIN;
                        return -EAGAIN;
                } else if (stream->dnstls_data.handshake < 0) {
                        FUNC7("Failed to invoke gnutls_handshake: %s", FUNC6(stream->dnstls_data.handshake));
                        if (FUNC3(stream->dnstls_data.handshake))
                                return -ECONNREFUSED;
                }

                stream->dnstls_events = 0;
        }

        return 0;
}