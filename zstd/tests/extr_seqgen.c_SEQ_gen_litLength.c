
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int size; int pos; scalar_t__ dst; } ;
struct TYPE_5__ {int state; unsigned int bytesLeft; int xxh; int saved; int seed; } ;
typedef TYPE_1__ SEQ_stream ;
typedef TYPE_2__ SEQ_outBuffer ;
typedef int BYTE ;


 unsigned int MIN (int ,unsigned int) ;
 int SEQ_randByte (int *) ;
 int XXH64_update (int *,int * const,int) ;
 int kMatchBytes ;

__attribute__((used)) static size_t SEQ_gen_litLength(SEQ_stream* stream, unsigned value, SEQ_outBuffer* out)
{
    typedef enum {
        ll_start = 0,
        ll_run_bytes,
        ll_literals,
        ll_run_match,
    } ll_state;
    BYTE* const ostart = (BYTE*)out->dst;
    BYTE* const oend = ostart + out->size;
    BYTE* op = ostart + out->pos;

    switch ((ll_state)stream->state) {
    case ll_start:
        stream->state = ll_run_bytes;
        stream->saved = stream->seed;
        stream->bytesLeft = MIN(kMatchBytes, value);

    case ll_run_bytes:
        while (stream->bytesLeft > 0 && op < oend) {
            *op++ = SEQ_randByte(&stream->seed) | 0x80;
            --stream->bytesLeft;
        }
        if (stream->bytesLeft > 0)
            break;

        stream->state = ll_literals;
        stream->bytesLeft = value - MIN(kMatchBytes, value);

    case ll_literals:
        while (stream->bytesLeft > 0 && op < oend) {
            *op++ = SEQ_randByte(&stream->seed) & 0x7F;
            --stream->bytesLeft;
        }
        if (stream->bytesLeft > 0)
            break;

        stream->state = ll_run_match;
        stream->bytesLeft = MIN(kMatchBytes, value);

    case ll_run_match: {
        while (stream->bytesLeft > 0 && op < oend) {
            *op++ = SEQ_randByte(&stream->saved) | 0x80;
            --stream->bytesLeft;
        }
        if (stream->bytesLeft > 0)
            break;
    }

    default:
        stream->state = 0;
        stream->bytesLeft = 0;
        break;
    }
    XXH64_update(&stream->xxh, ostart + out->pos, (op - ostart) - out->pos);
    out->pos = op - ostart;
    return stream->bytesLeft;
}
