
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_cmap ;
typedef int fz_context ;


 int pdf_lookup_cmap_full (int *,unsigned int,int*) ;
 int pdf_map_one_to_many (int *,int *,unsigned int,int*,int) ;
 int pdf_map_range_to_range (int *,int *,unsigned int,unsigned int,int) ;

__attribute__((used)) static void
pdf_remap_cmap_range(fz_context *ctx, pdf_cmap *ucs_from_gid,
 unsigned int cpt, unsigned int gid, unsigned int n, pdf_cmap *ucs_from_cpt)
{
 unsigned int k;
 int ucsbuf[8];
 int ucslen;

 for (k = 0; k <= n; ++k)
 {
  ucslen = pdf_lookup_cmap_full(ucs_from_cpt, cpt + k, ucsbuf);
  if (ucslen == 1)
   pdf_map_range_to_range(ctx, ucs_from_gid, gid + k, gid + k, ucsbuf[0]);
  else if (ucslen > 1)
   pdf_map_one_to_many(ctx, ucs_from_gid, gid + k, ucsbuf, ucslen);
 }
}
