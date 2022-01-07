
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int kind; int pmtudisc; int isatap; int fou_encap_type; } ;
typedef TYPE_1__ Tunnel ;
typedef TYPE_1__ NetDev ;


 int FOU_ENCAP_DIRECT ;
 TYPE_1__* IPIP (TYPE_1__*) ;


 TYPE_1__* SIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int assert_not_reached (char*) ;

__attribute__((used)) static void ipip_sit_init(NetDev *n) {
        Tunnel *t;

        assert(n);

        switch (n->kind) {
        case 129:
                t = IPIP(n);
                break;
        case 128:
                t = SIT(n);
                break;
        default:
                assert_not_reached("invalid netdev kind");
        }

        assert(t);

        t->pmtudisc = 1;
        t->fou_encap_type = FOU_ENCAP_DIRECT;
        t->isatap = -1;
}
