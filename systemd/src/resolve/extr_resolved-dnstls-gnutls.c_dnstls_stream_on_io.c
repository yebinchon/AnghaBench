
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int shutdown; int handshake; TYPE_2__* session; } ;
struct TYPE_10__ {void* dnstls_events; TYPE_1__ dnstls_data; struct TYPE_10__* encrypted; } ;
typedef TYPE_2__ DnsStream ;


 int DNSTLS_STREAM_CLOSED ;
 int EAGAIN ;
 int ECONNREFUSED ;
 void* EPOLLIN ;
 void* EPOLLOUT ;
 int GNUTLS_E_AGAIN ;
 int GNUTLS_SHUT_RDWR ;
 int assert (TYPE_2__*) ;
 int dns_stream_unref (TYPE_2__*) ;
 int gnutls_bye (TYPE_2__*,int ) ;
 scalar_t__ gnutls_error_is_fatal (int) ;
 int gnutls_handshake (TYPE_2__*) ;
 int gnutls_record_get_direction (TYPE_2__*) ;
 int gnutls_strerror (int) ;
 int log_debug (char*,int ) ;

int dnstls_stream_on_io(DnsStream *stream, uint32_t revents) {
        int r;

        assert(stream);
        assert(stream->encrypted);
        assert(stream->dnstls_data.session);

        if (stream->dnstls_data.shutdown) {
                r = gnutls_bye(stream->dnstls_data.session, GNUTLS_SHUT_RDWR);
                if (r == GNUTLS_E_AGAIN) {
                        stream->dnstls_events = gnutls_record_get_direction(stream->dnstls_data.session) == 1 ? EPOLLOUT : EPOLLIN;
                        return -EAGAIN;
                } else if (r < 0)
                        log_debug("Failed to invoke gnutls_bye: %s", gnutls_strerror(r));

                stream->dnstls_events = 0;
                stream->dnstls_data.shutdown = 0;
                dns_stream_unref(stream);
                return DNSTLS_STREAM_CLOSED;
        } else if (stream->dnstls_data.handshake < 0) {
                stream->dnstls_data.handshake = gnutls_handshake(stream->dnstls_data.session);
                if (stream->dnstls_data.handshake == GNUTLS_E_AGAIN) {
                        stream->dnstls_events = gnutls_record_get_direction(stream->dnstls_data.session) == 1 ? EPOLLOUT : EPOLLIN;
                        return -EAGAIN;
                } else if (stream->dnstls_data.handshake < 0) {
                        log_debug("Failed to invoke gnutls_handshake: %s", gnutls_strerror(stream->dnstls_data.handshake));
                        if (gnutls_error_is_fatal(stream->dnstls_data.handshake))
                                return -ECONNREFUSED;
                }

                stream->dnstls_events = 0;
        }

        return 0;
}
