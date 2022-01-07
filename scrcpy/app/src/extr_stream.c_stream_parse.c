
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct stream {TYPE_4__* parser; int codec_ctx; } ;
struct TYPE_6__ {int key_frame; } ;
struct TYPE_5__ {int size; int flags; int * data; } ;
typedef TYPE_1__ AVPacket ;


 int AV_NOPTS_VALUE ;
 int AV_PKT_FLAG_KEY ;
 int LOGE (char*) ;
 int SDL_assert (int) ;
 int av_parser_parse2 (TYPE_4__*,int ,int **,int*,int *,int,int ,int ,int) ;
 int process_frame (struct stream*,TYPE_1__*) ;

__attribute__((used)) static bool
stream_parse(struct stream *stream, AVPacket *packet) {
    uint8_t *in_data = packet->data;
    int in_len = packet->size;
    uint8_t *out_data = ((void*)0);
    int out_len = 0;
    int r = av_parser_parse2(stream->parser, stream->codec_ctx,
                             &out_data, &out_len, in_data, in_len,
                             AV_NOPTS_VALUE, AV_NOPTS_VALUE, -1);


    SDL_assert(r == in_len);
    SDL_assert(out_len == in_len);

    if (stream->parser->key_frame == 1) {
        packet->flags |= AV_PKT_FLAG_KEY;
    }

    bool ok = process_frame(stream, packet);
    if (!ok) {
        LOGE("Could not process frame");
        return 0;
    }

    return 1;
}
