
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WSASetLastError (int) ;
 int errno ;

__attribute__((used)) static void
set_error(int err)
{



 errno = err;

}
