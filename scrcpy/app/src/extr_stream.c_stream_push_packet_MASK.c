#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ pts; size_t size; int /*<<< orphan*/  flags; int /*<<< orphan*/  dts; scalar_t__ data; } ;
struct stream {int has_pending; TYPE_1__ pending; } ;
typedef  TYPE_1__ AVPacket ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,size_t) ; 
 scalar_t__ FUNC2 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,size_t) ; 
 int FUNC5 (struct stream*,TYPE_1__*) ; 
 int FUNC6 (struct stream*,TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC7(struct stream *stream, AVPacket *packet) {
    bool is_config = packet->pts == AV_NOPTS_VALUE;

    // A config packet must not be decoded immetiately (it contains no
    // frame); instead, it must be concatenated with the future data packet.
    if (stream->has_pending || is_config) {
        size_t offset;
        if (stream->has_pending) {
            offset = stream->pending.size;
            if (FUNC1(&stream->pending, packet->size)) {
                FUNC0("Could not grow packet");
                return false;
            }
        } else {
            offset = 0;
            if (FUNC2(&stream->pending, packet->size)) {
                FUNC0("Could not create packet");
                return false;
            }
            stream->has_pending = true;
        }

        FUNC4(stream->pending.data + offset, packet->data, packet->size);

        if (!is_config) {
            // prepare the concat packet to send to the decoder
            stream->pending.pts = packet->pts;
            stream->pending.dts = packet->dts;
            stream->pending.flags = packet->flags;
            packet = &stream->pending;
        }
    }

    if (is_config) {
        // config packet
        bool ok = FUNC5(stream, packet);
        if (!ok) {
            return false;
        }
    } else {
        // data packet
        bool ok = FUNC6(stream, packet);

        if (stream->has_pending) {
            // the pending packet must be discarded (consumed or error)
            stream->has_pending = false;
            FUNC3(&stream->pending);
        }

        if (!ok) {
            return false;
        }
    }
    return true;
}