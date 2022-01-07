
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ntp; } ;
typedef TYPE_1__ Link ;


 int strv_free (int ) ;

void link_ntp_settings_clear(Link *link) {
        link->ntp = strv_free(link->ntp);
}
