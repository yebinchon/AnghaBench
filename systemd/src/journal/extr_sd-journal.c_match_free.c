
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* data; TYPE_1__* parent; struct TYPE_8__* matches; } ;
struct TYPE_7__ {int matches; } ;
typedef TYPE_2__ Match ;


 int LIST_REMOVE (int ,int ,TYPE_2__*) ;
 int assert (TYPE_2__*) ;
 int free (TYPE_2__*) ;
 int matches ;

__attribute__((used)) static void match_free(Match *m) {
        assert(m);

        while (m->matches)
                match_free(m->matches);

        if (m->parent)
                LIST_REMOVE(matches, m->parent->matches, m);

        free(m->data);
        free(m);
}
