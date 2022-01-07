
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int activate; int use_for_encoding; } ;
typedef TYPE_1__ SecurityAssociation ;


 int assert (TYPE_1__*) ;

__attribute__((used)) static void security_association_init(SecurityAssociation *sa) {
        assert(sa);

        sa->activate = -1;
        sa->use_for_encoding = -1;
}
