
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _close (int) ;
 int close (int) ;

int compat_close(int infd)
{



 return close(infd);

}
