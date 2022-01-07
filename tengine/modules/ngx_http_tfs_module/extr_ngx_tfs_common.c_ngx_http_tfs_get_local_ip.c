
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_in {int dummy; } ;
struct ifreq {char* ifr_name; int ifr_addr; } ;
struct TYPE_3__ {size_t len; int data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_int_t ;


 int AF_INET ;
 int NGX_ERROR ;
 int NGX_OK ;
 int SIOCGIFADDR ;
 int SOCK_DGRAM ;
 int close (int) ;
 scalar_t__ ioctl (int,int ,struct ifreq*) ;
 int ngx_memcpy (char*,int ,size_t) ;
 int socket (int ,int ,int ) ;

ngx_int_t
ngx_http_tfs_get_local_ip(ngx_str_t device, struct sockaddr_in *addr)
{
    int sock;
    struct ifreq ifr;

    if((sock = socket(AF_INET, SOCK_DGRAM, 0)) < 0) {
        return NGX_ERROR;
    }

    ngx_memcpy(ifr.ifr_name, device.data, device.len);
    ifr.ifr_name[device.len] ='\0';

    if(ioctl(sock, SIOCGIFADDR, &ifr) < 0) {
        close(sock);
        return NGX_ERROR;
    }

    *addr = *((struct sockaddr_in *) &ifr.ifr_addr);

    close(sock);
    return NGX_OK;
}
