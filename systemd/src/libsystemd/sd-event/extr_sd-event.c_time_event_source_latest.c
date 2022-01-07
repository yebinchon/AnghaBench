
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_4__ {int accuracy; int next; } ;
struct TYPE_5__ {TYPE_1__ time; } ;
typedef TYPE_2__ sd_event_source ;


 int usec_add (int ,int ) ;

__attribute__((used)) static usec_t time_event_source_latest(const sd_event_source *s) {
        return usec_add(s->time.next, s->time.accuracy);
}
