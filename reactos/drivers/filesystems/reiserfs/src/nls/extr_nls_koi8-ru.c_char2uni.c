
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_2__ {scalar_t__ (* char2uni ) (int const,int,int*) ;} ;
typedef int PUCHAR ;


 TYPE_1__* p_nls ;
 scalar_t__ stub1 (int const,int,int*) ;

__attribute__((used)) static int char2uni(const unsigned char *rawstring, int boundlen,
      wchar_t *uni)
{
 int n;

 if ((*rawstring & 0xef) != 0xae) {

  *uni = (*rawstring & 0x10) ? 0x040e : 0x045e;
  return 1;
 }

 n = (int)(p_nls->char2uni((const PUCHAR)rawstring, boundlen,uni));
 return n;
}
