#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct iovec {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_8__ {scalar_t__ buffer_offset; int /*<<< orphan*/  ssl; TYPE_1__* write_buffer; } ;
struct TYPE_9__ {TYPE_2__ dnstls_data; int /*<<< orphan*/  dnstls_events; struct TYPE_9__* encrypted; } ;
struct TYPE_7__ {scalar_t__ length; scalar_t__ data; } ;
typedef  TYPE_3__ DnsStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DNS_STREAM_WRITE_TLS_DATA ; 
 int EAGAIN ; 
 int /*<<< orphan*/  EPOLLOUT ; 
 struct iovec FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*,struct iovec*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(DnsStream *stream) {
        ssize_t ss;

        FUNC3(stream);
        FUNC3(stream->encrypted);

        if (stream->dnstls_data.buffer_offset < stream->dnstls_data.write_buffer->length) {
                FUNC3(stream->dnstls_data.write_buffer->data);

                struct iovec iov[1];
                iov[0] = FUNC1(stream->dnstls_data.write_buffer->data + stream->dnstls_data.buffer_offset,
                                    stream->dnstls_data.write_buffer->length - stream->dnstls_data.buffer_offset);
                ss = FUNC4(stream, iov, 1, DNS_STREAM_WRITE_TLS_DATA);
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
                                FUNC0(FUNC2(stream->dnstls_data.ssl));
                                stream->dnstls_data.buffer_offset = 0;
                        }
                }
        }

        return 0;
}