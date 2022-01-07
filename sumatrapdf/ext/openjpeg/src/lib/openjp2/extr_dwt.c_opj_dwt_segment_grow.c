
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_UINT32 ;


 int opj_uint_adds (int ,int ) ;
 int opj_uint_min (int ,int ) ;
 int opj_uint_subs (int ,int ) ;

__attribute__((used)) static void opj_dwt_segment_grow(OPJ_UINT32 filter_width,
                                 OPJ_UINT32 max_size,
                                 OPJ_UINT32* start,
                                 OPJ_UINT32* end)
{
    *start = opj_uint_subs(*start, filter_width);
    *end = opj_uint_adds(*end, filter_width);
    *end = opj_uint_min(*end, max_size);
}
