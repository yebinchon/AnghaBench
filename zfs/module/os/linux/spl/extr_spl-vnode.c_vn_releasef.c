
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P_FINFO (int ) ;
 int areleasef (int,int ) ;
 int current ;

void
vn_releasef(int fd)
{
 areleasef(fd, P_FINFO(current));
}
