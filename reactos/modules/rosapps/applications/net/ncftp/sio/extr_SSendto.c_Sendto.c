
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int sendto (int,char const* const,size_t,int ,struct sockaddr*,int) ;

int
Sendto(int sfd, const char *const buf, size_t size, const struct sockaddr_in *const toAddr)
{
 int result;

 do {
  result = sendto(sfd, buf, size, 0,
    (struct sockaddr *) toAddr,
    (int) sizeof(struct sockaddr_in));
 } while ((result < 0) && (errno == EINTR));
 return (result);
}
