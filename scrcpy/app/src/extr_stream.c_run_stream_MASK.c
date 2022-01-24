#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stream {int /*<<< orphan*/  codec_ctx; scalar_t__ decoder; scalar_t__ recorder; TYPE_1__* parser; int /*<<< orphan*/  pending; scalar_t__ has_pending; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CODEC_ID_H264 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  PARSER_FLAG_COMPLETE_FRAMES ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int FUNC18 (struct stream*,int /*<<< orphan*/ *) ; 
 int FUNC19 (struct stream*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC20(void *data) {
    struct stream *stream = data;

    AVCodec *codec = FUNC8(AV_CODEC_ID_H264);
    if (!codec) {
        FUNC2("H.264 decoder not found");
        goto end;
    }

    stream->codec_ctx = FUNC7(codec);
    if (!stream->codec_ctx) {
        FUNC0("Could not allocate codec context");
        goto end;
    }

    if (stream->decoder && !FUNC11(stream->decoder, codec)) {
        FUNC2("Could not open decoder");
        goto finally_free_codec_ctx;
    }

    if (stream->recorder) {
        if (!FUNC15(stream->recorder, codec)) {
            FUNC2("Could not open recorder");
            goto finally_close_decoder;
        }

        if (!FUNC16(stream->recorder)) {
            FUNC2("Could not start recorder");
            goto finally_close_recorder;
        }
    }

    stream->parser = FUNC6(AV_CODEC_ID_H264);
    if (!stream->parser) {
        FUNC2("Could not initialize parser");
        goto finally_stop_and_join_recorder;
    }

    // We must only pass complete frames to av_parser_parse2()!
    // It's more complicated, but this allows to reduce the latency by 1 frame!
    stream->parser->flags |= PARSER_FLAG_COMPLETE_FRAMES;

    for (;;) {
        AVPacket packet;
        bool ok = FUNC19(stream, &packet);
        if (!ok) {
            // end of stream
            break;
        }

        ok = FUNC18(stream, &packet);
        FUNC4(&packet);
        if (!ok) {
            // cannot process packet (error already logged)
            break;
        }
    }

    FUNC1("End of frames");

    if (stream->has_pending) {
        FUNC4(&stream->pending);
    }

    FUNC5(stream->parser);
finally_stop_and_join_recorder:
    if (stream->recorder) {
        FUNC17(stream->recorder);
        FUNC3("Finishing recording...");
        FUNC14(stream->recorder);
    }
finally_close_recorder:
    if (stream->recorder) {
        FUNC13(stream->recorder);
    }
finally_close_decoder:
    if (stream->decoder) {
        FUNC10(stream->decoder);
    }
finally_free_codec_ctx:
    FUNC9(&stream->codec_ctx);
end:
    FUNC12();
    return 0;
}