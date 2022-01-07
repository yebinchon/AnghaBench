
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int address_families; scalar_t__ address_families_whitelist; } ;
typedef TYPE_1__ ExecContext ;


 int assert (TYPE_1__ const*) ;
 int set_isempty (int ) ;

__attribute__((used)) static bool context_has_address_families(const ExecContext *c) {
        assert(c);

        return c->address_families_whitelist ||
                !set_isempty(c->address_families);
}
