
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int opj_marker_info_t ;
struct TYPE_4__ {int maxmarknum; int * tile_index; int * marker; scalar_t__ marknum; } ;
typedef TYPE_1__ opj_codestream_index_t ;


 scalar_t__ opj_calloc (int,int) ;
 int opj_free (TYPE_1__*) ;

__attribute__((used)) static opj_codestream_index_t* opj_j2k_create_cstr_index(void)
{
    opj_codestream_index_t* cstr_index = (opj_codestream_index_t*)
                                         opj_calloc(1, sizeof(opj_codestream_index_t));
    if (!cstr_index) {
        return ((void*)0);
    }

    cstr_index->maxmarknum = 100;
    cstr_index->marknum = 0;
    cstr_index->marker = (opj_marker_info_t*)
                         opj_calloc(cstr_index->maxmarknum, sizeof(opj_marker_info_t));
    if (!cstr_index-> marker) {
        opj_free(cstr_index);
        return ((void*)0);
    }

    cstr_index->tile_index = ((void*)0);

    return cstr_index;
}
