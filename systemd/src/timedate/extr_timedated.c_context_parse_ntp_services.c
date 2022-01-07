
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Context ;


 int context_parse_ntp_services_from_disk (int *) ;
 int context_parse_ntp_services_from_environment (int *) ;

__attribute__((used)) static int context_parse_ntp_services(Context *c) {
        int r;

        r = context_parse_ntp_services_from_environment(c);
        if (r != 0)
                return r;

        return context_parse_ntp_services_from_disk(c);
}
