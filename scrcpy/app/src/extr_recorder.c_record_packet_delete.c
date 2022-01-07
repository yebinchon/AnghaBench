
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct record_packet {int packet; } ;


 int SDL_free (struct record_packet*) ;
 int av_packet_unref (int *) ;

__attribute__((used)) static void
record_packet_delete(struct record_packet *rec) {
    av_packet_unref(&rec->packet);
    SDL_free(rec);
}
