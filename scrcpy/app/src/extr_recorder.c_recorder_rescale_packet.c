
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct recorder {TYPE_1__* ctx; } ;
struct TYPE_4__ {int time_base; } ;
struct TYPE_3__ {TYPE_2__** streams; } ;
typedef TYPE_2__ AVStream ;
typedef int AVPacket ;


 int SCRCPY_TIME_BASE ;
 int av_packet_rescale_ts (int *,int ,int ) ;

__attribute__((used)) static void
recorder_rescale_packet(struct recorder *recorder, AVPacket *packet) {
    AVStream *ostream = recorder->ctx->streams[0];
    av_packet_rescale_ts(packet, SCRCPY_TIME_BASE, ostream->time_base);
}
