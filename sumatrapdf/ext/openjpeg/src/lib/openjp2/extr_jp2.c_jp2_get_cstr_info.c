
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int j2k; } ;
typedef TYPE_1__ opj_jp2_t ;
typedef int opj_codestream_info_v2_t ;


 int * j2k_get_cstr_info (int ) ;

opj_codestream_info_v2_t* jp2_get_cstr_info(opj_jp2_t* p_jp2)
{
    return j2k_get_cstr_info(p_jp2->j2k);
}
