
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int manager; } ;
typedef TYPE_1__ Link ;


 int log_link_warning_errno (TYPE_1__*,int,char*) ;
 TYPE_1__* manager_find_uplink (int ,TYPE_1__*) ;
 int radv_set_dns (TYPE_1__*,TYPE_1__*) ;
 int radv_set_domains (TYPE_1__*,TYPE_1__*) ;

int radv_emit_dns(Link *link) {
        Link *uplink;
        int r;

        uplink = manager_find_uplink(link->manager, link);

        r = radv_set_dns(link, uplink);
        if (r < 0)
                log_link_warning_errno(link, r, "Could not set RA DNS: %m");

        r = radv_set_domains(link, uplink);
        if (r < 0)
                log_link_warning_errno(link, r, "Could not set RA Domains: %m");

        return 0;
}
