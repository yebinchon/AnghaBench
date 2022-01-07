
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ pts; size_t size; int flags; int dts; scalar_t__ data; } ;
struct stream {int has_pending; TYPE_1__ pending; } ;
typedef TYPE_1__ AVPacket ;


 scalar_t__ AV_NOPTS_VALUE ;
 int LOGE (char*) ;
 scalar_t__ av_grow_packet (TYPE_1__*,size_t) ;
 scalar_t__ av_new_packet (TYPE_1__*,size_t) ;
 int av_packet_unref (TYPE_1__*) ;
 int memcpy (scalar_t__,scalar_t__,size_t) ;
 int process_config_packet (struct stream*,TYPE_1__*) ;
 int stream_parse (struct stream*,TYPE_1__*) ;

__attribute__((used)) static bool
stream_push_packet(struct stream *stream, AVPacket *packet) {
    bool is_config = packet->pts == AV_NOPTS_VALUE;



    if (stream->has_pending || is_config) {
        size_t offset;
        if (stream->has_pending) {
            offset = stream->pending.size;
            if (av_grow_packet(&stream->pending, packet->size)) {
                LOGE("Could not grow packet");
                return 0;
            }
        } else {
            offset = 0;
            if (av_new_packet(&stream->pending, packet->size)) {
                LOGE("Could not create packet");
                return 0;
            }
            stream->has_pending = 1;
        }

        memcpy(stream->pending.data + offset, packet->data, packet->size);

        if (!is_config) {

            stream->pending.pts = packet->pts;
            stream->pending.dts = packet->dts;
            stream->pending.flags = packet->flags;
            packet = &stream->pending;
        }
    }

    if (is_config) {

        bool ok = process_config_packet(stream, packet);
        if (!ok) {
            return 0;
        }
    } else {

        bool ok = stream_parse(stream, packet);

        if (stream->has_pending) {

            stream->has_pending = 0;
            av_packet_unref(&stream->pending);
        }

        if (!ok) {
            return 0;
        }
    }
    return 1;
}
