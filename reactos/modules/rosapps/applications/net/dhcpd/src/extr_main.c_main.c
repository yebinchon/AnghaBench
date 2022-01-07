
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_zero; TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int WSADATA ;
typedef int DHCPOPTIONS ;
typedef int DHCPMESSAGE ;


 int AF_INET ;
 int INADDR_ANY ;
 int IPPROTO_UDP ;
 int MAKEWORD (int,int) ;
 int MYPORT ;
 int SOCK_DGRAM ;
 int WSACleanup () ;
 int WSAStartup (int ,int *) ;
 int bind (int,struct sockaddr*,int) ;
 int close (int) ;
 scalar_t__ display_dhcp_packet (int *,int *) ;
 int exit (int) ;
 int htons (int ) ;
 int init_leases_list () ;
 int memset (int *,char,int) ;
 scalar_t__ parse_dhcp_options (int *,int *) ;
 int perror (char*) ;
 scalar_t__ process_dhcp_packet (int *,int *) ;
 int recvfrom (int,int *,int,int ,struct sockaddr*,int*) ;
 int socket (int ,int ,int ) ;

int main( int argc, char *argv[] )
{




  int sockfd;
  struct sockaddr_in my_addr;
  struct sockaddr_in their_addr;
  int addr_len, numbytes;
  DHCPMESSAGE dhcpm;
  DHCPOPTIONS dhcpo;
  if ((sockfd = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP)) == -1) {
    perror("socket");
    exit(1);
  }

  init_leases_list();

  my_addr.sin_family = AF_INET;
  my_addr.sin_port = htons(MYPORT);
  my_addr.sin_addr.s_addr = INADDR_ANY;
  memset(&(my_addr.sin_zero), '\0', 8);

  if (bind(sockfd, (struct sockaddr *)&my_addr,
    sizeof(struct sockaddr)) == -1) {
    perror("bind");
    exit(1);
  }

  addr_len = sizeof(struct sockaddr);
  while((numbytes=recvfrom(sockfd,&dhcpm, sizeof( DHCPMESSAGE ), 0,
    (struct sockaddr *)&their_addr, &addr_len)) != -1) {

    display_dhcp_packet( &dhcpm, &dhcpo );
    if( parse_dhcp_options( &dhcpm, &dhcpo ) < 0 )
      continue;
    if( display_dhcp_packet( &dhcpm, &dhcpo ) < 0 )
      continue;
    if( process_dhcp_packet( &dhcpm, &dhcpo ) < 0 )
      continue;
  }

  close(sockfd);





  return 0;

}
