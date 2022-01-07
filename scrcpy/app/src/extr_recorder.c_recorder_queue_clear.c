
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recorder_queue {int dummy; } ;
struct record_packet {int dummy; } ;


 int next ;
 int queue_is_empty (struct recorder_queue*) ;
 int queue_take (struct recorder_queue*,int ,struct record_packet**) ;
 int record_packet_delete (struct record_packet*) ;

__attribute__((used)) static void
recorder_queue_clear(struct recorder_queue *queue) {
    while (!queue_is_empty(queue)) {
        struct record_packet *rec;
        queue_take(queue, next, &rec);
        record_packet_delete(rec);
    }
}
