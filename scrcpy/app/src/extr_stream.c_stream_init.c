
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream {int has_pending; struct recorder* recorder; struct decoder* decoder; int socket; } ;
struct recorder {int dummy; } ;
struct decoder {int dummy; } ;
typedef int socket_t ;



void
stream_init(struct stream *stream, socket_t socket,
            struct decoder *decoder, struct recorder *recorder) {
    stream->socket = socket;
    stream->decoder = decoder,
    stream->recorder = recorder;
    stream->has_pending = 0;
}
