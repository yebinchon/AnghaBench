
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_UINT64 ;
typedef scalar_t__ OPJ_OFF_T ;
typedef int FILE ;


 int OPJ_FSEEK (int *,int ,int ) ;
 scalar_t__ OPJ_FTELL (int *) ;
 int SEEK_END ;
 int SEEK_SET ;

__attribute__((used)) static OPJ_UINT64 opj_get_data_length_from_file(FILE * p_file)
{
    OPJ_OFF_T file_length = 0;

    OPJ_FSEEK(p_file, 0, SEEK_END);
    file_length = (OPJ_OFF_T)OPJ_FTELL(p_file);
    OPJ_FSEEK(p_file, 0, SEEK_SET);

    return (OPJ_UINT64)file_length;
}
