
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nss_status { ____Placeholder_nss_status } nss_status ;


 int getpwent_data ;
 int systemd_setent (int *) ;

enum nss_status _nss_systemd_setpwent(int stayopen) {
        return systemd_setent(&getpwent_data);
}
