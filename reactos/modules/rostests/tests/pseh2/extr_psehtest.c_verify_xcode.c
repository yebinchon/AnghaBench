
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int return_positive () ;

__attribute__((used)) static
int verify_xcode(int code, int xcode, int * ret, int filter)
{
 *ret = code == xcode;

 if(*ret)
  *ret = return_positive();

 return filter;
}
