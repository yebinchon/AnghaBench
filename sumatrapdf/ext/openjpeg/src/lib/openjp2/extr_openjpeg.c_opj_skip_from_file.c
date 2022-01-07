
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_OFF_T ;
typedef int FILE ;


 scalar_t__ OPJ_FSEEK (int *,int,int ) ;
 int SEEK_CUR ;

__attribute__((used)) static OPJ_OFF_T opj_skip_from_file(OPJ_OFF_T p_nb_bytes, FILE * p_user_data)
{
    if (OPJ_FSEEK(p_user_data, p_nb_bytes, SEEK_CUR)) {
        return -1;
    }

    return p_nb_bytes;
}
