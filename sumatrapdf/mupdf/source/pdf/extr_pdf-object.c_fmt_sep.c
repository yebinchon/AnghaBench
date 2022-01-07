
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmt {int sep; } ;
typedef int fz_context ;



__attribute__((used)) static inline void fmt_sep(fz_context *ctx, struct fmt *fmt)
{
 fmt->sep = 1;
}
