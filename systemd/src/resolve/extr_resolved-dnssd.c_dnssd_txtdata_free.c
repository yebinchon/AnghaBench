
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int txt; int rr; } ;
typedef TYPE_1__ DnssdTxtData ;


 int dns_resource_record_unref (int ) ;
 int dns_txt_item_free_all (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;

DnssdTxtData *dnssd_txtdata_free(DnssdTxtData *txt_data) {
        if (!txt_data)
                return ((void*)0);

        dns_resource_record_unref(txt_data->rr);
        dns_txt_item_free_all(txt_data->txt);

        return mfree(txt_data);
}
