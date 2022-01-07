
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct siphash {int dummy; } ;
struct TYPE_5__ {struct TYPE_5__ const* interface; struct TYPE_5__ const* name; struct TYPE_5__ const* type; } ;
typedef TYPE_1__ Member ;


 int assert (TYPE_1__ const*) ;
 int string_hash_func (TYPE_1__ const*,struct siphash*) ;
 int uint64_hash_func (int*,struct siphash*) ;

__attribute__((used)) static void member_hash_func(const Member *m, struct siphash *state) {
        uint64_t arity = 1;

        assert(m);
        assert(m->type);

        string_hash_func(m->type, state);

        arity += !!m->name + !!m->interface;

        uint64_hash_func(&arity, state);

        if (m->name)
                string_hash_func(m->name, state);

        if (m->interface)
                string_hash_func(m->interface, state);
}
