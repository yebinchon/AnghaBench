
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* generate_csc_matrix ) (int *,int ,int *) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int VdpStatus ;
typedef int VdpProcamp ;
typedef int VdpColorStandard ;
typedef int VdpCSCMatrix ;


 int CHECK_FUNC (int ) ;
 int GENERATE_CSC_MATRIX ;
 int stub1 (int *,int ,int *) ;

VdpStatus vdp_generate_csc_matrix(const vdp_t *vdp, const VdpProcamp *procamp,
    VdpColorStandard standard, VdpCSCMatrix *csc_matrix)
{
    VdpProcamp buf, *copy = ((void*)0);

    if (procamp != ((void*)0))
    {
        buf = *procamp;
        copy = &buf;
    }
    CHECK_FUNC(GENERATE_CSC_MATRIX);
    return vdp->vt.generate_csc_matrix(copy, standard, csc_matrix);
}
