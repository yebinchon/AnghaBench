#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct stream {TYPE_4__* parser; int /*<<< orphan*/  codec_ctx; } ;
struct TYPE_6__ {int key_frame; } ;
struct TYPE_5__ {int size; int /*<<< orphan*/  flags; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct stream*,TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC4(struct stream *stream, AVPacket *packet) {
    uint8_t *in_data = packet->data;
    int in_len = packet->size;
    uint8_t *out_data = NULL;
    int out_len = 0;
    int r = FUNC2(stream->parser, stream->codec_ctx,
                             &out_data, &out_len, in_data, in_len,
                             AV_NOPTS_VALUE, AV_NOPTS_VALUE, -1);

    // PARSER_FLAG_COMPLETE_FRAMES is set
    FUNC1(r == in_len);
    FUNC1(out_len == in_len);

    if (stream->parser->key_frame == 1) {
        packet->flags |= AV_PKT_FLAG_KEY;
    }

    bool ok = FUNC3(stream, packet);
    if (!ok) {
        FUNC0("Could not process frame");
        return false;
    }

    return true;
}