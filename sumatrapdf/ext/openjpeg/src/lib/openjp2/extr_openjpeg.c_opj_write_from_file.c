
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_SIZE_T ;
typedef int FILE ;


 int fwrite (void*,int,int ,int *) ;

__attribute__((used)) static OPJ_SIZE_T opj_write_from_file(void * p_buffer, OPJ_SIZE_T p_nb_bytes,
                                      FILE * p_file)
{
    return fwrite(p_buffer, 1, p_nb_bytes, p_file);
}
