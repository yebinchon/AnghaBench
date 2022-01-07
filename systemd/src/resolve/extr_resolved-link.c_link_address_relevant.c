
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; scalar_t__ scope; } ;
typedef TYPE_1__ LinkAddress ;


 int IFA_F_DEPRECATED ;
 int IFA_F_TENTATIVE ;
 scalar_t__ RT_SCOPE_HOST ;
 scalar_t__ RT_SCOPE_LINK ;
 int assert (TYPE_1__*) ;

bool link_address_relevant(LinkAddress *a, bool local_multicast) {
        assert(a);

        if (a->flags & (IFA_F_DEPRECATED|IFA_F_TENTATIVE))
                return 0;

        if (a->scope >= (local_multicast ? RT_SCOPE_HOST : RT_SCOPE_LINK))
                return 0;

        return 1;
}
