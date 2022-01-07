
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_lldp_callback_t ;
typedef int sd_lldp ;
typedef int sd_event ;


 int sd_lldp_attach_event (int *,int *,int ) ;
 int sd_lldp_new (int **) ;
 int sd_lldp_set_callback (int *,int ,void*) ;
 int sd_lldp_set_ifindex (int *,int) ;
 int sd_lldp_start (int *) ;

__attribute__((used)) static int start_lldp(sd_lldp **lldp, sd_event *e, sd_lldp_callback_t cb, void *cb_data) {
        int r;

        r = sd_lldp_new(lldp);
        if (r < 0)
                return r;

        r = sd_lldp_set_ifindex(*lldp, 42);
        if (r < 0)
                return r;

        r = sd_lldp_set_callback(*lldp, cb, cb_data);
        if (r < 0)
                return r;

        r = sd_lldp_attach_event(*lldp, e, 0);
        if (r < 0)
                return r;

        r = sd_lldp_start(*lldp);
        if (r < 0)
                return r;

        return 0;
}
