
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct iovec {int dummy; } ;
typedef int ssize_t ;
struct TYPE_8__ {scalar_t__ buffer_offset; int ssl; TYPE_1__* write_buffer; } ;
struct TYPE_9__ {TYPE_2__ dnstls_data; int dnstls_events; struct TYPE_9__* encrypted; } ;
struct TYPE_7__ {scalar_t__ length; scalar_t__ data; } ;
typedef TYPE_3__ DnsStream ;


 int BIO_reset (int ) ;
 int DNS_STREAM_WRITE_TLS_DATA ;
 int EAGAIN ;
 int EPOLLOUT ;
 struct iovec IOVEC_MAKE (scalar_t__,scalar_t__) ;
 int SSL_get_wbio (int ) ;
 int assert (TYPE_3__*) ;
 int dns_stream_writev (TYPE_3__*,struct iovec*,int,int ) ;

__attribute__((used)) static int dnstls_flush_write_buffer(DnsStream *stream) {
        ssize_t ss;

        assert(stream);
        assert(stream->encrypted);

        if (stream->dnstls_data.buffer_offset < stream->dnstls_data.write_buffer->length) {
                assert(stream->dnstls_data.write_buffer->data);

                struct iovec iov[1];
                iov[0] = IOVEC_MAKE(stream->dnstls_data.write_buffer->data + stream->dnstls_data.buffer_offset,
                                    stream->dnstls_data.write_buffer->length - stream->dnstls_data.buffer_offset);
                ss = dns_stream_writev(stream, iov, 1, DNS_STREAM_WRITE_TLS_DATA);
                if (ss < 0) {
                        if (ss == -EAGAIN)
                                stream->dnstls_events |= EPOLLOUT;

                        return ss;
                } else {
                        stream->dnstls_data.buffer_offset += ss;

                        if (stream->dnstls_data.buffer_offset < stream->dnstls_data.write_buffer->length) {
                                stream->dnstls_events |= EPOLLOUT;
                                return -EAGAIN;
                        } else {
                                BIO_reset(SSL_get_wbio(stream->dnstls_data.ssl));
                                stream->dnstls_data.buffer_offset = 0;
                        }
                }
        }

        return 0;
}
