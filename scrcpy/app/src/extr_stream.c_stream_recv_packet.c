
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct stream {int socket; } ;
typedef int ssize_t ;
struct TYPE_5__ {scalar_t__ pts; int * data; } ;
typedef TYPE_1__ AVPacket ;


 scalar_t__ AV_NOPTS_VALUE ;
 int HEADER_SIZE ;
 int LOGE (char*) ;
 scalar_t__ NO_PTS ;
 int SDL_assert (int) ;
 scalar_t__ av_new_packet (TYPE_1__*,int) ;
 int av_packet_unref (TYPE_1__*) ;
 int buffer_read32be (int *) ;
 scalar_t__ buffer_read64be (int *) ;
 int net_recv_all (int ,int *,int) ;

__attribute__((used)) static bool
stream_recv_packet(struct stream *stream, AVPacket *packet) {
    uint8_t header[HEADER_SIZE];
    ssize_t r = net_recv_all(stream->socket, header, HEADER_SIZE);
    if (r < HEADER_SIZE) {
        return 0;
    }

    uint64_t pts = buffer_read64be(header);
    uint32_t len = buffer_read32be(&header[8]);
    SDL_assert(len);

    if (av_new_packet(packet, len)) {
        LOGE("Could not allocate packet");
        return 0;
    }

    r = net_recv_all(stream->socket, packet->data, len);
    if (r < len) {
        av_packet_unref(packet);
        return 0;
    }

    packet->pts = pts != NO_PTS ? pts : AV_NOPTS_VALUE;

    return 1;
}
