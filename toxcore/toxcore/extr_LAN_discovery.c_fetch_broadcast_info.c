
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct sockaddr_in {int sin_addr; } ;
struct TYPE_6__ {scalar_t__ sa_family; } ;
struct ifreq {char* ifc_buf; int ifc_len; TYPE_1__ ifr_broadaddr; } ;
struct ifconf {char* ifc_buf; int ifc_len; TYPE_1__ ifr_broadaddr; } ;
typedef int sock_t ;
typedef int i_faces ;
struct TYPE_7__ {scalar_t__ uint32; int in_addr; } ;
struct TYPE_8__ {TYPE_2__ ip4; scalar_t__ family; } ;
struct TYPE_9__ {int port; TYPE_3__ ip; } ;
typedef TYPE_4__ IP_Port ;


 scalar_t__ AF_INET ;
 int MAX_INTERFACES ;
 int SIOCGIFBRDADDR ;
 int SIOCGIFCONF ;
 int SOCK_STREAM ;
 int broadcast_count ;
 TYPE_4__* broadcast_ip_port ;
 int close (int ) ;
 scalar_t__ ioctl (int ,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int socket (scalar_t__,int ,int ) ;

__attribute__((used)) static void fetch_broadcast_info(uint16_t port)
{




    broadcast_count = 0;
    sock_t sock = 0;

    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) < 0)
        return;


    struct ifreq i_faces[MAX_INTERFACES];
    memset(i_faces, 0, sizeof(struct ifreq) * MAX_INTERFACES);

    struct ifconf ifconf;
    ifconf.ifc_buf = (char *)i_faces;
    ifconf.ifc_len = sizeof(i_faces);

    if (ioctl(sock, SIOCGIFCONF, &ifconf) < 0) {
        close(sock);
        return;
    }






    int i, count = ifconf.ifc_len / sizeof(struct ifreq);

    for (i = 0; i < count; i++) {

        if (ioctl(sock, SIOCGIFBRDADDR, &i_faces[i]) < 0)
            continue;


        if (i_faces[i].ifr_broadaddr.sa_family != AF_INET)
            continue;

        struct sockaddr_in *sock4 = (struct sockaddr_in *)&i_faces[i].ifr_broadaddr;

        if (broadcast_count >= MAX_INTERFACES) {
            close(sock);
            return;
        }

        IP_Port *ip_port = &broadcast_ip_port[broadcast_count];
        ip_port->ip.family = AF_INET;
        ip_port->ip.ip4.in_addr = sock4->sin_addr;

        if (ip_port->ip.ip4.uint32 == 0) {
            continue;
        }

        ip_port->port = port;
        broadcast_count++;
    }

    close(sock);
}
