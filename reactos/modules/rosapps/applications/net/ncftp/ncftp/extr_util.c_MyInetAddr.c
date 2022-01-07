
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;


 int AF_INET ;
 int Strncpy (char*,char*,size_t) ;
 char* inet_ntoa (struct in_addr) ;
 int inet_ntop (int ,struct in_addr*,char*,size_t) ;

void
MyInetAddr(char *dst, size_t siz, char **src, int i)
{
 struct in_addr *ia;

 char *cp;


 (void) Strncpy(dst, "???", siz);
 if (src != (char **) 0) {
  ia = (struct in_addr *) src[i];



  cp = inet_ntoa(*ia);
  if ((cp != (char *) 0) && (cp != (char *) -1) && (cp[0] != '\0'))
   (void) Strncpy(dst, cp, siz);

 }
}
