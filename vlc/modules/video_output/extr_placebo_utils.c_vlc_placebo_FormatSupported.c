
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fourcc_t ;
struct pl_plane_data {int dummy; } ;
struct pl_gpu {int dummy; } ;
struct fmt_desc {int num_planes; } ;


 int FillDesc (int ,struct fmt_desc const*,struct pl_plane_data*) ;
 struct fmt_desc* FindDesc (int ) ;
 int pl_plane_find_fmt (struct pl_gpu const*,int *,struct pl_plane_data*) ;

bool vlc_placebo_FormatSupported(const struct pl_gpu *gpu, vlc_fourcc_t fcc)
{
    const struct fmt_desc *desc = FindDesc(fcc);
    if (!desc)
        return 0;

    struct pl_plane_data data[4];
    FillDesc(fcc, desc, data);
    for (int i = 0; i < desc->num_planes; i++) {
        if (!pl_plane_find_fmt(gpu, ((void*)0), &data[i]))
            return 0;
    }

    return 1;
}
