
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int name_template; int type; int name; int filename; int txt_data_items; int srv_rr; int ptr_rr; TYPE_1__* manager; } ;
struct TYPE_7__ {int dnssd_services; } ;
typedef TYPE_2__ DnssdService ;


 int dns_resource_record_unref (int ) ;
 int dnssd_txtdata_free_all (int ) ;
 int free (int ) ;
 int hashmap_remove (int ,int ) ;
 TYPE_2__* mfree (TYPE_2__*) ;

DnssdService *dnssd_service_free(DnssdService *service) {
        if (!service)
                return ((void*)0);

        if (service->manager)
                hashmap_remove(service->manager->dnssd_services, service->name);

        dns_resource_record_unref(service->ptr_rr);
        dns_resource_record_unref(service->srv_rr);

        dnssd_txtdata_free_all(service->txt_data_items);

        free(service->filename);
        free(service->name);
        free(service->type);
        free(service->name_template);

        return mfree(service);
}
