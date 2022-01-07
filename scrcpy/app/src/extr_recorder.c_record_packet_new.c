
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct record_packet {int packet; } ;
typedef int AVPacket ;


 int SDL_free (struct record_packet*) ;
 struct record_packet* SDL_malloc (int) ;
 int av_init_packet (int *) ;
 scalar_t__ av_packet_ref (int *,int const*) ;

__attribute__((used)) static struct record_packet *
record_packet_new(const AVPacket *packet) {
    struct record_packet *rec = SDL_malloc(sizeof(*rec));
    if (!rec) {
        return ((void*)0);
    }



    av_init_packet(&rec->packet);

    if (av_packet_ref(&rec->packet, packet)) {
        SDL_free(rec);
        return ((void*)0);
    }
    return rec;
}
