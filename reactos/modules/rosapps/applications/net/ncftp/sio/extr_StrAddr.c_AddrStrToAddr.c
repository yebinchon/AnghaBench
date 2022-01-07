
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_family; int sin_port; } ;
struct hostent {scalar_t__ h_length; int * h_addr_list; int h_addrtype; } ;
typedef int portstr ;


 int AF_INET ;
 scalar_t__ EADDRNOTAVAIL ;
 scalar_t__ ENOENT ;
 unsigned long INADDR_NONE ;
 int ISALNUM (char) ;
 unsigned int ServiceNameToPortNumber (char*) ;
 unsigned int atoi (char*) ;
 scalar_t__ errno ;
 struct hostent* gethostbyname (char*) ;
 int htons (short) ;
 unsigned long inet_addr (char*) ;
 scalar_t__ isdigit (char) ;
 int kAddrStrToAddrBadHost ;
 int kAddrStrToAddrMiscErr ;
 int memcpy (unsigned long*,int ,size_t) ;
 int memset (struct sockaddr_in* const,int ,int) ;
 char* strchr (char*,char) ;
 int strncpy (char*,char const* const,int) ;

int
AddrStrToAddr(const char * const s, struct sockaddr_in * const sa, const int defaultport)
{
 char portstr[128];
 unsigned long ipnum;
 unsigned int port;
 struct hostent *hp;
 char *hostcp, *atsign, *colon, *cp, *p2;

 memset(sa, 0, sizeof(struct sockaddr_in));
 strncpy(portstr, s, sizeof(portstr));
 portstr[sizeof(portstr) - 1] = '\0';

 if ((colon = strchr(portstr, ':')) != ((void*)0)) {

  if ((colon[1] == '/') && (colon[2] == '/')) {
   *colon = '\0';
   port = 0;
   hostcp = colon + 3;
   for (cp = hostcp; *cp != '\0'; cp++) {
    if ((!ISALNUM(*cp)) && (*cp != '.')) {

     if ((*cp == ':') && (isdigit(cp[1]))) {
      *cp++ = '\0';
      p2 = cp;
      while (isdigit(*cp))
       cp++;
      *cp = '\0';
      port = atoi(p2);
     }
     *cp = '\0';
     break;
    }
   }
   if (port == 0)
    port = ServiceNameToPortNumber(portstr);
  } else {

   *colon = '\0';
   hostcp = portstr;
   port = (unsigned int) atoi(colon + 1);
  }
 } else if ((atsign = strchr(portstr, '@')) != ((void*)0)) {

  *atsign = '\0';
  hostcp = atsign + 1;
  port = (unsigned int) atoi(portstr);
 } else if (defaultport > 0) {

  port = (unsigned int) defaultport;
  hostcp = portstr;
 } else {



  errno = EADDRNOTAVAIL;
  return (kAddrStrToAddrMiscErr);
 }

 sa->sin_port = htons((short) port);

 ipnum = inet_addr(hostcp);
 if (ipnum != INADDR_NONE) {
  sa->sin_family = AF_INET;
  sa->sin_addr.s_addr = ipnum;
 } else {
  errno = 0;
  hp = gethostbyname(hostcp);
  if (hp == ((void*)0)) {
   if (errno == 0)
    errno = ENOENT;
   return (kAddrStrToAddrBadHost);
  }
  sa->sin_family = hp->h_addrtype;
  memcpy(&sa->sin_addr.s_addr, hp->h_addr_list[0],
   (size_t) hp->h_length);
 }
 return (0);
}
