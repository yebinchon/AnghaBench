#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int kind; int pmtudisc; int gre_erspan_sequence; int /*<<< orphan*/  fou_encap_type; } ;
typedef  TYPE_1__ Tunnel ;
typedef  TYPE_1__ NetDev ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FOU_ENCAP_DIRECT ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
#define  NETDEV_KIND_ERSPAN 130 
#define  NETDEV_KIND_GRE 129 
#define  NETDEV_KIND_GRETAP 128 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(NetDev *n) {
        Tunnel *t;

        FUNC3(n);

        switch (n->kind) {
        case NETDEV_KIND_GRE:
                t = FUNC1(n);
                break;
        case NETDEV_KIND_ERSPAN:
                t = FUNC0(n);
                break;
        case NETDEV_KIND_GRETAP:
                t = FUNC2(n);
                break;
        default:
                FUNC4("invalid netdev kind");
        }

        FUNC3(t);

        t->pmtudisc = true;
        t->gre_erspan_sequence = -1;
        t->fou_encap_type = FOU_ENCAP_DIRECT;
}