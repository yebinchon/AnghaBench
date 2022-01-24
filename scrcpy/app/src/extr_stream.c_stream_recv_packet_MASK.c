#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct stream {int /*<<< orphan*/  socket; } ;
typedef  int ssize_t ;
struct TYPE_5__ {scalar_t__ pts; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ AVPacket ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 int HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ NO_PTS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool
FUNC7(struct stream *stream, AVPacket *packet) {
    // The video stream contains raw packets, without time information. When we
    // record, we retrieve the timestamps separately, from a "meta" header
    // added by the server before each raw packet.
    //
    // The "meta" header length is 12 bytes:
    // [. . . . . . . .|. . . .]. . . . . . . . . . . . . . . ...
    //  <-------------> <-----> <-----------------------------...
    //        PTS        packet        raw packet
    //                    size
    //
    // It is followed by <packet_size> bytes containing the packet/frame.

    uint8_t header[HEADER_SIZE];
    ssize_t r = FUNC6(stream->socket, header, HEADER_SIZE);
    if (r < HEADER_SIZE) {
        return false;
    }

    uint64_t pts = FUNC5(header);
    uint32_t len = FUNC4(&header[8]);
    FUNC1(len);

    if (FUNC2(packet, len)) {
        FUNC0("Could not allocate packet");
        return false;
    }

    r = FUNC6(stream->socket, packet->data, len);
    if (r < len) {
        FUNC3(packet);
        return false;
    }

    packet->pts = pts != NO_PTS ? pts : AV_NOPTS_VALUE;

    return true;
}