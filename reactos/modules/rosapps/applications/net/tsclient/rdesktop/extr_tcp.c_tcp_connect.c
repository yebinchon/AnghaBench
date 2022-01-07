
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8 ;
typedef int true_value ;
struct TYPE_11__ {int s_addr; } ;
struct sockaddr_in {int sin_port; int sin_family; TYPE_6__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct hostent {int h_addr; } ;
struct addrinfo {int ai_addrlen; struct addrinfo* ai_next; struct sockaddr* ai_addr; int ai_protocol; int ai_socktype; int ai_family; } ;
struct TYPE_8__ {int size; int * data; } ;
struct TYPE_7__ {int size; int * data; } ;
struct TYPE_9__ {int sock; TYPE_2__ out; TYPE_1__ in; } ;
struct TYPE_10__ {int tcp_port_rdp; int disconnect_reason; TYPE_3__ tcp; } ;
typedef TYPE_4__ RDPCLIENT ;
typedef int BOOL ;


 int AF_INET ;
 int AF_UNSPEC ;
 int False ;
 int INADDR_NONE ;
 int IPPROTO_TCP ;
 int SOCK_STREAM ;
 int TCP_NODELAY ;
 int True ;
 int close (int) ;
 int closesocket (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int error (char*,char*) ;
 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (char*,char*,struct addrinfo*,struct addrinfo**) ;
 struct hostent* gethostbyname (char*) ;
 int htons (int) ;
 int inet_addr (char*) ;
 scalar_t__ malloc (int) ;
 int memcpy (TYPE_6__*,int ,int) ;
 int memset (struct addrinfo*,int ,int) ;
 int setsockopt (int,int ,int ,void*,int) ;
 int snprintf (char*,int,char*,int) ;
 void* socket (int ,int ,int ) ;

BOOL
tcp_connect(RDPCLIENT * This, char *server)
{
 int true_value = 1;
 struct hostent *nslookup;
 struct sockaddr_in servaddr;

 if ((nslookup = gethostbyname(server)) != ((void*)0))
 {
  memcpy(&servaddr.sin_addr, nslookup->h_addr, sizeof(servaddr.sin_addr));
 }
 else if ((servaddr.sin_addr.s_addr = inet_addr(server)) == INADDR_NONE)
 {
  error("%s: unable to resolve host\n", server);
  This->disconnect_reason = 260;
  return False;
 }

 if ((This->tcp.sock = socket(AF_INET, SOCK_STREAM, 0)) < 0)
 {

  return False;
 }

 servaddr.sin_family = AF_INET;
 servaddr.sin_port = htons(This->tcp_port_rdp);



 if (connect(This->tcp.sock, (struct sockaddr *) &servaddr, sizeof(struct sockaddr)) < 0)
 {

  This->disconnect_reason = 516;
  closesocket(This->tcp.sock);
  return False;
 }



 setsockopt(This->tcp.sock, IPPROTO_TCP, TCP_NODELAY, (void *) &true_value, sizeof(true_value));

 This->tcp.in.size = 4096;
 This->tcp.in.data = (uint8 *) malloc(This->tcp.in.size);

 if(This->tcp.in.data == ((void*)0))
 {
  This->disconnect_reason = 262;
  return False;
 }

 This->tcp.out.size = 4096;
 This->tcp.out.data = (uint8 *) malloc(This->tcp.out.size);

 if(This->tcp.out.data == ((void*)0))
 {
  This->disconnect_reason = 262;
  return False;
 }

 return True;
}
