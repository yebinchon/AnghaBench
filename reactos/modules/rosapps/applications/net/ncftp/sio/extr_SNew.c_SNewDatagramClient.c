
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int SOCK_DGRAM ;
 int kSNewFailed ;
 int socket (int ,int ,int ) ;

int
SNewDatagramClient(void)
{
 int sfd;

 sfd = socket(AF_INET, SOCK_DGRAM, 0);
 if (sfd < 0)
  return kSNewFailed;

 return (sfd);
}
