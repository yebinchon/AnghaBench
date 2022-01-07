
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nss_status { ____Placeholder_nss_status } nss_status ;


 int getpwent_data ;
 int nss_systemd_endent (int *) ;

enum nss_status _nss_systemd_endpwent(void) {
        return nss_systemd_endent(&getpwent_data);
}
