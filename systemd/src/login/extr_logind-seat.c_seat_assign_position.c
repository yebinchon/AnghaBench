
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {unsigned int position_count; int * positions; } ;
struct TYPE_7__ {scalar_t__ position; } ;
typedef TYPE_1__ Session ;
typedef TYPE_2__ Seat ;


 int seat_claim_position (TYPE_2__*,TYPE_1__*,unsigned int) ;

__attribute__((used)) static void seat_assign_position(Seat *s, Session *session) {
        unsigned pos;

        if (session->position > 0)
                return;

        for (pos = 1; pos < s->position_count; ++pos)
                if (!s->positions[pos])
                        break;

        seat_claim_position(s, session, pos);
}
