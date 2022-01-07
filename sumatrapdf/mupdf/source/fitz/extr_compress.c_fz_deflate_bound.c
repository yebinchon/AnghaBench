
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;



size_t fz_deflate_bound(fz_context *ctx, size_t size)
{

 return size + (size >> 12) + (size >> 14) + (size >> 25) + 13;
}
