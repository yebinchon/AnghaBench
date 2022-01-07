
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int data; } ;
typedef TYPE_1__ sd_dhcp_option ;


 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;

__attribute__((used)) static sd_dhcp_option* dhcp_option_free(sd_dhcp_option *i) {
        if (!i)
                return ((void*)0);

        free(i->data);
        return mfree(i);
}
