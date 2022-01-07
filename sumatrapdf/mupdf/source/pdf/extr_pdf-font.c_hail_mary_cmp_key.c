
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;



__attribute__((used)) static int
hail_mary_cmp_key(fz_context *ctx, void *k0, void *k1)
{
 return k0 == k1;
}
