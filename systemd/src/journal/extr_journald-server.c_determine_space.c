
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {int limit; int available; } ;
struct TYPE_10__ {TYPE_1__ space; } ;
struct TYPE_9__ {TYPE_3__ runtime_storage; TYPE_3__ system_storage; scalar_t__ system_journal; } ;
typedef TYPE_2__ Server ;
typedef TYPE_3__ JournalStorage ;


 int assert (TYPE_2__*) ;
 int cache_space_refresh (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static int determine_space(Server *s, uint64_t *available, uint64_t *limit) {
        JournalStorage *js;
        int r;

        assert(s);

        js = s->system_journal ? &s->system_storage : &s->runtime_storage;

        r = cache_space_refresh(s, js);
        if (r >= 0) {
                if (available)
                        *available = js->space.available;
                if (limit)
                        *limit = js->space.limit;
        }
        return r;
}
