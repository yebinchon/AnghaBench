
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int EINVAL ;
 int* charset2uni ;

__attribute__((used)) static int char2uni(const unsigned char *rawstring, int boundlen, wchar_t *uni)
{
 *uni = charset2uni[*rawstring];
 if (*uni == 0x0000)
  return -EINVAL;
 return 1;
}
