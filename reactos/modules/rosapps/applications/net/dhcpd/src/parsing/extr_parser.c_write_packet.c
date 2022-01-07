
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;
struct sockaddr_in {struct in_addr sin_addr; int sin_zero; void* sin_port; void* sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {scalar_t__ h_addr; } ;
typedef int enable ;
typedef int DHCPMESSAGE ;


 void* AF_INET ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_BROADCAST ;
 int close (int) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 struct hostent* gethostbyname (char*) ;
 void* htons (int) ;
 char* inet_ntoa (struct in_addr) ;
 int memset (int *,char,int) ;
 int perror (char*) ;
 int printf (char*,int,char*) ;
 int sendto (int,int *,int,int ,struct sockaddr*,int) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (void*,int ,int ) ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;

int write_packet( DHCPMESSAGE *dhcpm, char *name )
{
  int sockfd;
  struct sockaddr_in their_addr;
  struct hostent *he;
  int numbytes;
  int enable = 1;

  fprintf( stdout, "write_packet [begin]\n" );

  if( !dhcpm )
    return -1;

  if ((sockfd = socket(AF_INET, SOCK_DGRAM, 0)) == -1) {
    perror("socket");
    exit(1);
  }

  if( setsockopt( sockfd, SOL_SOCKET, SO_BROADCAST, &enable, sizeof( enable )) == -1 )
    {
      perror("setsockopt");
      exit(1);
    }

  if( strcmp( "255.255.255.255", name ) )
    {
      if ((he=gethostbyname(name)) == ((void*)0)) {
 perror("gethostbyname");
 fprintf( stdout, "Unknown host %s \n", name );
 return -1;
      }
      their_addr.sin_family = AF_INET;
      their_addr.sin_port = htons(68);
      their_addr.sin_addr = *((struct in_addr *)he->h_addr);
    } else {
      their_addr.sin_family = AF_INET;
      their_addr.sin_port = htons(68);
      their_addr.sin_addr.s_addr = 0xFFFFFFFF;
    }

  fprintf( stdout, "IP a buscar: %s \n", name );
  memset(&(their_addr.sin_zero), '\0', 8);

  if ((numbytes=sendto(sockfd, dhcpm, sizeof(DHCPMESSAGE), 0,
         (struct sockaddr *)&their_addr, sizeof(struct sockaddr))) == -1) {
    perror("sendto");
    exit(1);
  }

  printf("sent %d bytes to %s\n", numbytes,
  inet_ntoa(their_addr.sin_addr));

  close(sockfd);

  fprintf( stdout, "write_packet [end]\n" );

  return 0;
}
