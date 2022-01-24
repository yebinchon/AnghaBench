#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct recorder {int /*<<< orphan*/  filename; TYPE_6__* ctx; } ;
struct TYPE_11__ {TYPE_3__** streams; } ;
struct TYPE_10__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_9__ {TYPE_2__* codec; TYPE_1__* codecpar; } ;
struct TYPE_8__ {int extradata_size; int /*<<< orphan*/ * extradata; } ;
struct TYPE_7__ {int extradata_size; int /*<<< orphan*/ * extradata; } ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int FUNC3 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC5(struct recorder *recorder, const AVPacket *packet) {
    AVStream *ostream = recorder->ctx->streams[0];

    uint8_t *extradata = FUNC2(packet->size * sizeof(uint8_t));
    if (!extradata) {
        FUNC0("Could not allocate extradata");
        return false;
    }

    // copy the first packet to the extra data
    FUNC4(extradata, packet->data, packet->size);

#ifdef SCRCPY_LAVF_HAS_NEW_CODEC_PARAMS_API
    ostream->codecpar->extradata = extradata;
    ostream->codecpar->extradata_size = packet->size;
#else
    ostream->codec->extradata = extradata;
    ostream->codec->extradata_size = packet->size;
#endif

    int ret = FUNC3(recorder->ctx, NULL);
    if (ret < 0) {
        FUNC1("Failed to write header to %s", recorder->filename);
        return false;
    }

    return true;
}