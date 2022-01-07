
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ matches; } ;
typedef TYPE_1__ Match ;


 int match_free (TYPE_1__*) ;

__attribute__((used)) static void match_free_if_empty(Match *m) {
        if (!m || m->matches)
                return;

        match_free(m);
}
