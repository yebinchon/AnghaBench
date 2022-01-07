
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int kind; int pmtudisc; int gre_erspan_sequence; int fou_encap_type; } ;
typedef TYPE_1__ Tunnel ;
typedef TYPE_1__ NetDev ;


 TYPE_1__* ERSPAN (TYPE_1__*) ;
 int FOU_ENCAP_DIRECT ;
 TYPE_1__* GRE (TYPE_1__*) ;
 TYPE_1__* GRETAP (TYPE_1__*) ;



 int assert (TYPE_1__*) ;
 int assert_not_reached (char*) ;

__attribute__((used)) static void gre_erspan_init(NetDev *n) {
        Tunnel *t;

        assert(n);

        switch (n->kind) {
        case 129:
                t = GRE(n);
                break;
        case 130:
                t = ERSPAN(n);
                break;
        case 128:
                t = GRETAP(n);
                break;
        default:
                assert_not_reached("invalid netdev kind");
        }

        assert(t);

        t->pmtudisc = 1;
        t->gre_erspan_sequence = -1;
        t->fou_encap_type = FOU_ENCAP_DIRECT;
}
