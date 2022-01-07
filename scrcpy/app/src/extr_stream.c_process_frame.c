
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct stream {scalar_t__ recorder; scalar_t__ decoder; } ;
struct TYPE_5__ {int pts; int dts; } ;
typedef TYPE_1__ AVPacket ;


 int LOGE (char*) ;
 int decoder_push (scalar_t__,TYPE_1__*) ;
 int recorder_push (scalar_t__,TYPE_1__*) ;

__attribute__((used)) static bool
process_frame(struct stream *stream, AVPacket *packet) {
    if (stream->decoder && !decoder_push(stream->decoder, packet)) {
        return 0;
    }

    if (stream->recorder) {
        packet->dts = packet->pts;

        if (!recorder_push(stream->recorder, packet)) {
            LOGE("Could not send packet to recorder");
            return 0;
        }
    }

    return 1;
}
