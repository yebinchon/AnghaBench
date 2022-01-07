
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* OPJ_OFF_T ;
typedef int OPJ_BOOL ;


 int OPJ_ARG_NOT_USED (void*) ;
 int OPJ_FALSE ;

OPJ_BOOL opj_stream_default_seek(OPJ_OFF_T p_nb_bytes, void * p_user_data)
{
    OPJ_ARG_NOT_USED(p_nb_bytes);
    OPJ_ARG_NOT_USED(p_user_data);
    return OPJ_FALSE;
}
