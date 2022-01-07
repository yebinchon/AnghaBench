
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fourcc_t ;
struct fourcc_mapping {char* desc; int fourcc; } ;
struct fourcc_desc {char* desc; int fourcc; } ;


 struct fourcc_mapping* bsearch (int *,struct fourcc_mapping const*,size_t,int,int ) ;
 int fourcc_cmp ;

__attribute__((used)) static vlc_fourcc_t Lookup(vlc_fourcc_t fourcc, const char **restrict dsc,
                           const struct fourcc_mapping *mapv, size_t mapc,
                           const struct fourcc_desc *dscv, size_t dscc)
{
    const struct fourcc_mapping *mapping;
    const struct fourcc_desc *desc;

    mapping = bsearch(&fourcc, mapv, mapc, sizeof (*mapv), fourcc_cmp);
    if (mapping != ((void*)0))
    {
        if (dsc != ((void*)0))
        {
            desc = bsearch(&fourcc, dscv, dscc, sizeof (*dscv), fourcc_cmp);
            if (desc != ((void*)0))
            {
                *dsc = desc->desc;
                return mapping->fourcc;
            }
        }
        fourcc = mapping->fourcc;
    }

    desc = bsearch(&fourcc, dscv, dscc, sizeof (*dscv), fourcc_cmp);
    if (desc == ((void*)0))
        return 0;
    if (dsc != ((void*)0))
        *dsc = desc->desc;
    return fourcc;
}
