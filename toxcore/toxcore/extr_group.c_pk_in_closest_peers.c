
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {TYPE_1__* closest_peers; } ;
struct TYPE_4__ {int real_pk; int entry; } ;
typedef TYPE_2__ Group_c ;


 unsigned int DESIRED_CLOSE_CONNECTIONS ;
 scalar_t__ public_key_cmp (int ,int *) ;

__attribute__((used)) static unsigned int pk_in_closest_peers(Group_c *g, uint8_t *real_pk)
{
    unsigned int i;

    for (i = 0; i < DESIRED_CLOSE_CONNECTIONS; ++i) {
        if (!g->closest_peers[i].entry)
            continue;

        if (public_key_cmp(g->closest_peers[i].real_pk, real_pk) == 0)
            return 1;

    }

    return 0;
}
