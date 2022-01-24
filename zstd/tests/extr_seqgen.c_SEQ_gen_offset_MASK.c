#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int size; int pos; scalar_t__ dst; } ;
struct TYPE_5__ {int state; unsigned int bytesLeft; int /*<<< orphan*/  xxh; int /*<<< orphan*/  saved; int /*<<< orphan*/  seed; } ;
typedef  TYPE_1__ SEQ_stream ;
typedef  TYPE_2__ SEQ_outBuffer ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const,int) ; 
 size_t kMatchBytes ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t const) ; 

__attribute__((used)) static size_t FUNC4(SEQ_stream* stream, unsigned value, SEQ_outBuffer* out)
{
    typedef enum {
        of_start = 0,
        of_run_bytes,
        of_offset,
        of_run_match,
    } of_state;
    BYTE* const ostart = (BYTE*)out->dst;
    BYTE* const oend = ostart + out->size;
    BYTE* op = ostart + out->pos;

    switch ((of_state)stream->state) {
    case of_start:
        stream->state = of_run_bytes;
        stream->saved = stream->seed;
        stream->bytesLeft = FUNC0(value, kMatchBytes);
    /* fall-through */
    case of_run_bytes: {
        while (stream->bytesLeft > 0 && op < oend) {
            *op++ = FUNC1(&stream->seed) | 0x80;
            --stream->bytesLeft;
        }
        if (stream->bytesLeft > 0)
            break;
        /* State transition */
        stream->state = of_offset;
        stream->bytesLeft = value - FUNC0(value, kMatchBytes);
    }
    /* fall-through */
    case of_offset: {
        /* Copy matchLength + 1 bytes to the output buffer */
        size_t const setLength = FUNC0(stream->bytesLeft, (size_t)(oend - op));
        if (setLength > 0) {
            FUNC3(op, 0, setLength);
            op += setLength;
            stream->bytesLeft -= setLength;
        }
        if (stream->bytesLeft > 0)
            break;
        /* State transition */
        stream->state = of_run_match;
        stream->bytesLeft = FUNC0(value, kMatchBytes);
    }
    /* fall-through */
    case of_run_match: {
        while (stream->bytesLeft > 0 && op < oend) {
            *op++ = FUNC1(&stream->saved) | 0x80;
            --stream->bytesLeft;
        }
        if (stream->bytesLeft > 0)
            break;
    }
    /* fall-through */
    default:
        stream->state = 0;
        stream->bytesLeft = 0;
        break;
    }
    FUNC2(&stream->xxh, ostart + out->pos, (op - ostart) - out->pos);
    out->pos = op - ostart;
    return stream->bytesLeft;
}