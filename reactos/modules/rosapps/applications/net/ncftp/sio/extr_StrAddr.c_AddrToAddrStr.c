
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {scalar_t__ sin_port; int sin_addr; } ;
struct servent {char* s_name; } ;
struct in_addr {int dummy; } ;
struct hostent {char* h_name; } ;


 int AF_INET ;
 struct hostent* gethostbyaddr (char*,int,int ) ;
 struct servent* getservbyport (int,char*) ;
 char* inet_ntoa (int ) ;
 scalar_t__ ntohs (scalar_t__) ;
 int sprintf (char*,char*,unsigned int) ;

char *
AddrToAddrStr(char *const dst, size_t dsize, struct sockaddr_in * const saddrp, int dns, const char *fmt)
{
 const char *addrNamePtr;
 struct hostent *hp;
 char str[128];
 char *dlim, *dp;
 const char *cp;
 struct servent *pp;

 if (dns == 0) {
  addrNamePtr = inet_ntoa(saddrp->sin_addr);
 } else {
  hp = gethostbyaddr((char *) &saddrp->sin_addr, (int) sizeof(struct in_addr), AF_INET);
  if ((hp != ((void*)0)) && (hp->h_name != ((void*)0)) && (hp->h_name[0] != '\0')) {
   addrNamePtr = hp->h_name;
  } else {
   addrNamePtr = inet_ntoa(saddrp->sin_addr);
  }
 }
 if (fmt == ((void*)0))
  fmt = "%h:%p";
 for (dp = dst, dlim = dp + dsize - 1; ; fmt++) {
  if (*fmt == '\0') {
   break;
  } else if (*fmt == '%') {
   fmt++;
   if (*fmt == '%') {
    if (dp < dlim)
     *dp++ = '%';
   } else if (*fmt == 'p') {
    sprintf(str, "%u", (unsigned int) ntohs(saddrp->sin_port));
    for (cp = str; *cp != '\0'; cp++)
     if (dp < dlim)
      *dp++ = *cp;
    *dp = '\0';
   } else if (*fmt == 'h') {
    if (addrNamePtr != ((void*)0)) {
     cp = addrNamePtr;
    } else {
     cp = "unknown";
    }
    for ( ; *cp != '\0'; cp++)
     if (dp < dlim)
      *dp++ = *cp;
    *dp = '\0';
   } else if (*fmt == 's') {
    pp = getservbyport((int) (saddrp->sin_port), "tcp");
    if (pp == ((void*)0))
     pp = getservbyport((int) (saddrp->sin_port), "udp");
    if (pp == ((void*)0)) {
     sprintf(str, "%u", (unsigned int) ntohs(saddrp->sin_port));
     cp = str;
    } else {
     cp = pp->s_name;
    }
    for ( ; *cp != '\0'; cp++)
     if (dp < dlim)
      *dp++ = *cp;

    *dp = '\0';
   } else if ((*fmt == 't') || (*fmt == 'u')) {
    pp = getservbyport((int) (saddrp->sin_port), (*fmt == 'u') ? "udp" : "tcp");
    if (pp == ((void*)0)) {
     sprintf(str, "%u", (unsigned int) ntohs(saddrp->sin_port));
     cp = str;
    } else {
     cp = pp->s_name;
    }
    for ( ; *cp != '\0'; cp++)
     if (dp < dlim)
      *dp++ = *cp;

    *dp = '\0';
   } else if (*fmt == '\0') {
    break;
   } else {
    if (dp < dlim)
     *dp++ = *fmt;
   }
  } else if (dp < dlim) {
   *dp++ = *fmt;
  }
 }
 *dp = '\0';
 return (dst);
}
