
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stream {int codec_ctx; scalar_t__ decoder; scalar_t__ recorder; TYPE_1__* parser; int pending; scalar_t__ has_pending; } ;
struct TYPE_3__ {int flags; } ;
typedef int AVPacket ;
typedef int AVCodec ;


 int AV_CODEC_ID_H264 ;
 int LOGC (char*) ;
 int LOGD (char*) ;
 int LOGE (char*) ;
 int LOGI (char*) ;
 int PARSER_FLAG_COMPLETE_FRAMES ;
 int av_packet_unref (int *) ;
 int av_parser_close (TYPE_1__*) ;
 TYPE_1__* av_parser_init (int ) ;
 int avcodec_alloc_context3 (int *) ;
 int * avcodec_find_decoder (int ) ;
 int avcodec_free_context (int *) ;
 int decoder_close (scalar_t__) ;
 int decoder_open (scalar_t__,int *) ;
 int notify_stopped () ;
 int recorder_close (scalar_t__) ;
 int recorder_join (scalar_t__) ;
 int recorder_open (scalar_t__,int *) ;
 int recorder_start (scalar_t__) ;
 int recorder_stop (scalar_t__) ;
 int stream_push_packet (struct stream*,int *) ;
 int stream_recv_packet (struct stream*,int *) ;

__attribute__((used)) static int
run_stream(void *data) {
    struct stream *stream = data;

    AVCodec *codec = avcodec_find_decoder(AV_CODEC_ID_H264);
    if (!codec) {
        LOGE("H.264 decoder not found");
        goto end;
    }

    stream->codec_ctx = avcodec_alloc_context3(codec);
    if (!stream->codec_ctx) {
        LOGC("Could not allocate codec context");
        goto end;
    }

    if (stream->decoder && !decoder_open(stream->decoder, codec)) {
        LOGE("Could not open decoder");
        goto finally_free_codec_ctx;
    }

    if (stream->recorder) {
        if (!recorder_open(stream->recorder, codec)) {
            LOGE("Could not open recorder");
            goto finally_close_decoder;
        }

        if (!recorder_start(stream->recorder)) {
            LOGE("Could not start recorder");
            goto finally_close_recorder;
        }
    }

    stream->parser = av_parser_init(AV_CODEC_ID_H264);
    if (!stream->parser) {
        LOGE("Could not initialize parser");
        goto finally_stop_and_join_recorder;
    }



    stream->parser->flags |= PARSER_FLAG_COMPLETE_FRAMES;

    for (;;) {
        AVPacket packet;
        bool ok = stream_recv_packet(stream, &packet);
        if (!ok) {

            break;
        }

        ok = stream_push_packet(stream, &packet);
        av_packet_unref(&packet);
        if (!ok) {

            break;
        }
    }

    LOGD("End of frames");

    if (stream->has_pending) {
        av_packet_unref(&stream->pending);
    }

    av_parser_close(stream->parser);
finally_stop_and_join_recorder:
    if (stream->recorder) {
        recorder_stop(stream->recorder);
        LOGI("Finishing recording...");
        recorder_join(stream->recorder);
    }
finally_close_recorder:
    if (stream->recorder) {
        recorder_close(stream->recorder);
    }
finally_close_decoder:
    if (stream->decoder) {
        decoder_close(stream->decoder);
    }
finally_free_codec_ctx:
    avcodec_free_context(&stream->codec_ctx);
end:
    notify_stopped();
    return 0;
}
