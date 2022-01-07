
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nss_status { ____Placeholder_nss_status } nss_status ;


 int getgrent_data ;
 int systemd_setent (int *) ;

enum nss_status _nss_systemd_setgrent(int stayopen) {
        return systemd_setent(&getgrent_data);
}
