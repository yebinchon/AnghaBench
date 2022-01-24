#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct record_packet {int /*<<< orphan*/  packet; } ;
typedef  int /*<<< orphan*/  AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct record_packet*) ; 
 struct record_packet* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static struct record_packet *
FUNC4(const AVPacket *packet) {
    struct record_packet *rec = FUNC1(sizeof(*rec));
    if (!rec) {
        return NULL;
    }

    // av_packet_ref() does not initialize all fields in old FFmpeg versions
    // See <https://github.com/Genymobile/scrcpy/issues/707>
    FUNC2(&rec->packet);

    if (FUNC3(&rec->packet, packet)) {
        FUNC0(rec);
        return NULL;
    }
    return rec;
}