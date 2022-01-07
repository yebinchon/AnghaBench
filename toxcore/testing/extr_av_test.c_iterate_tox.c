
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ToxAV ;
typedef int Tox ;


 int MIN (int ,int ) ;
 int tox_iterate (int *) ;
 int tox_iteration_interval (int *) ;
 int * toxav_get_tox (int *) ;

int iterate_tox(Tox *bootstrap, ToxAV *AliceAV, ToxAV *BobAV)
{
    tox_iterate(bootstrap);
    tox_iterate(toxav_get_tox(AliceAV));
    tox_iterate(toxav_get_tox(BobAV));

    return MIN(tox_iteration_interval(toxav_get_tox(AliceAV)), tox_iteration_interval(toxav_get_tox(BobAV)));
}
