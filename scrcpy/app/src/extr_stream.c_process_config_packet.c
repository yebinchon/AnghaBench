
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream {scalar_t__ recorder; } ;
typedef int AVPacket ;


 int LOGE (char*) ;
 int recorder_push (scalar_t__,int *) ;

__attribute__((used)) static bool
process_config_packet(struct stream *stream, AVPacket *packet) {
    if (stream->recorder && !recorder_push(stream->recorder, packet)) {
        LOGE("Could not send config packet to recorder");
        return 0;
    }
    return 1;
}
