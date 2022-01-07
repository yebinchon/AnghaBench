
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {scalar_t__ s_addr; } ;
struct hostent {scalar_t__ h_length; int * h_addr_list; } ;


 scalar_t__ INADDR_NONE ;
 struct hostent* gethostbyname (char*) ;
 scalar_t__ inet_addr (char*) ;
 int memcpy (scalar_t__*,int ,size_t) ;

__attribute__((used)) static struct hostent *
GetHostEntry(char *host, struct in_addr *ip_address)
{
 struct in_addr ip;
 struct hostent *hp;





 ip.s_addr = inet_addr(host);
 if (ip.s_addr != INADDR_NONE) {
  hp = ((void*)0);
 } else {

  hp = gethostbyname(host);
  if (hp != ((void*)0))
   (void) memcpy(&ip.s_addr, hp->h_addr_list[0], (size_t) hp->h_length);
 }
 if (ip_address != ((void*)0))
  *ip_address = ip;
 return (hp);
}
