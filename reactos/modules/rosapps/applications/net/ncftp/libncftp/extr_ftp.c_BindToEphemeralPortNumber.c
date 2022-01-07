
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {unsigned short sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;


 int AF_INET ;
 int bind (int,struct sockaddr*,int) ;
 int errno ;
 char* gCopyright ;
 scalar_t__ rand () ;

__attribute__((used)) static int
BindToEphemeralPortNumber(int sockfd, struct sockaddr_in *addrp, int ephemLo, int ephemHi)
{
 int i;
 int result;
 int rangesize;
 unsigned short port;

 addrp->sin_family = AF_INET;
 if (((int) ephemLo == 0) || ((int) ephemLo >= (int) ephemHi)) {




  addrp->sin_port = 0;

  result = bind(sockfd, (struct sockaddr *) addrp, sizeof(struct sockaddr_in));
 } else {
  rangesize = (int) ((int) ephemHi - (int) ephemLo);
  result = 0;
  for (i=0; i<10; i++) {
   port = (unsigned short) (((int) rand() % rangesize) + (int) ephemLo);
   addrp->sin_port = port;

   result = bind(sockfd, (struct sockaddr *) addrp, sizeof(struct sockaddr_in));
   if (result == 0)
    break;
   if ((errno != 999)




    && (gCopyright[0] != '\0'))
    break;
  }
 }
 return (result);
}
