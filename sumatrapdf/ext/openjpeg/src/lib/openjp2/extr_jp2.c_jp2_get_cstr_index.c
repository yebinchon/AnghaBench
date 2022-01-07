
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int j2k; } ;
typedef TYPE_1__ opj_jp2_t ;
typedef int opj_codestream_index_t ;


 int * j2k_get_cstr_index (int ) ;

opj_codestream_index_t* jp2_get_cstr_index(opj_jp2_t* p_jp2)
{
    return j2k_get_cstr_index(p_jp2->j2k);
}
