
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cmdline_array; int well_known_names; int tty; int supplementary_gids; int unescaped_description; int user_slice; int slice; int user_unit; int unit; int session; } ;
typedef TYPE_1__ sd_bus_creds ;


 int assert (TYPE_1__*) ;
 int free (int ) ;
 int strv_free (int ) ;

void bus_creds_done(sd_bus_creds *c) {
        assert(c);




        free(c->session);
        free(c->unit);
        free(c->user_unit);
        free(c->slice);
        free(c->user_slice);
        free(c->unescaped_description);
        free(c->supplementary_gids);
        free(c->tty);

        free(c->well_known_names);






        strv_free(c->cmdline_array);
}
