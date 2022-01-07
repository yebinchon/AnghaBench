
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_OFF_T ;
typedef int OPJ_BOOL ;
typedef int FILE ;


 int OPJ_FALSE ;
 scalar_t__ OPJ_FSEEK (int *,int ,int ) ;
 int OPJ_TRUE ;
 int SEEK_SET ;

__attribute__((used)) static OPJ_BOOL opj_seek_from_file(OPJ_OFF_T p_nb_bytes, FILE * p_user_data)
{
    if (OPJ_FSEEK(p_user_data, p_nb_bytes, SEEK_SET)) {
        return OPJ_FALSE;
    }

    return OPJ_TRUE;
}
