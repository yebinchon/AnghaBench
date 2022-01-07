
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * link; } ;
typedef int Link ;
typedef TYPE_1__ Address ;


 int address_free (TYPE_1__*) ;
 int address_is_ready (TYPE_1__*) ;
 int address_release (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int link_check_ready (int *) ;
 int link_update_operstate (int *,int) ;
 int log_link_warning_errno (int *,int,char*) ;

int address_drop(Address *address) {
        Link *link;
        bool ready;
        int r;

        assert(address);

        ready = address_is_ready(address);
        link = address->link;

        r = address_release(address);
        if (r < 0)
                log_link_warning_errno(link, r, "Failed to disable IP masquerading, ignoring: %m");

        address_free(address);

        link_update_operstate(link, 1);

        if (link && !ready)
                link_check_ready(link);

        return 0;
}
