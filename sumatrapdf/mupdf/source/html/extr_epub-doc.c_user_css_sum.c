
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int fz_context ;
typedef int Byte ;


 scalar_t__ crc32 (scalar_t__,int *,int ) ;
 char* fz_user_css (int *) ;
 int strlen (char const*) ;

__attribute__((used)) static uint32_t
user_css_sum(fz_context *ctx)
{
 uint32_t sum = 0;
 const char *css = fz_user_css(ctx);
 sum = crc32(0, ((void*)0), 0);
 if (css)
  sum = crc32(sum, (Byte*)css, strlen(css));
 return sum;
}
