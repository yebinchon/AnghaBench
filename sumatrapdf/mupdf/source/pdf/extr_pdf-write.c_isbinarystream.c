
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 scalar_t__ isbinary (unsigned char const) ;

__attribute__((used)) static int isbinarystream(fz_context *ctx, const unsigned char *data, size_t len)
{
 size_t i;
 for (i = 0; i < len; i++)
  if (isbinary(data[i]))
   return 1;
 return 0;
}
