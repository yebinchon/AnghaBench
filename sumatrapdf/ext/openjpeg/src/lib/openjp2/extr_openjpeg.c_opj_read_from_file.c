
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ OPJ_SIZE_T ;
typedef int FILE ;


 scalar_t__ fread (void*,int,scalar_t__,int *) ;

__attribute__((used)) static OPJ_SIZE_T opj_read_from_file(void * p_buffer, OPJ_SIZE_T p_nb_bytes,
                                     FILE * p_file)
{
    OPJ_SIZE_T l_nb_read = fread(p_buffer, 1, p_nb_bytes, p_file);
    return l_nb_read ? l_nb_read : (OPJ_SIZE_T) - 1;
}
