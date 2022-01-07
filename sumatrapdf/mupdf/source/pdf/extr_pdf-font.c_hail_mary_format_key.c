
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int fz_strlcpy (char*,char*,int) ;

__attribute__((used)) static void
hail_mary_format_key(fz_context *ctx, char *s, int n, void *key_)
{
 fz_strlcpy(s, "(hail mary font)", n);
}
