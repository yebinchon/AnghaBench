
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_array_t ;
typedef int es_pair_t ;
typedef int es_out_id_t ;


 int es_pair_compare_ES ;
 int * getEsPair (int *,int ,int const*) ;

__attribute__((used)) static es_pair_t *getEsPairByES(vlc_array_t *p_array, const es_out_id_t *p_es)
{
    return getEsPair(p_array, es_pair_compare_ES, p_es);
}
