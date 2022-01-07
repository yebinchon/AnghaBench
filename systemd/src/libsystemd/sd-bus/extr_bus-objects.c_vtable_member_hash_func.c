
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtable_member {int member; int interface; int path; } ;
struct siphash {int dummy; } ;


 int assert (struct vtable_member const*) ;
 int string_hash_func (int ,struct siphash*) ;

__attribute__((used)) static void vtable_member_hash_func(const struct vtable_member *m, struct siphash *state) {
        assert(m);

        string_hash_func(m->path, state);
        string_hash_func(m->interface, state);
        string_hash_func(m->member, state);
}
