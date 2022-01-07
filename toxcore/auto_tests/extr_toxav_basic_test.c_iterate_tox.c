
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tox ;


 int MIN (int ,int ) ;
 int tox_iterate (int *) ;
 int tox_iteration_interval (int *) ;

int iterate_tox(Tox *bootstrap, Tox *Alice, Tox *Bob)
{
    tox_iterate(bootstrap);
    tox_iterate(Alice);
    tox_iterate(Bob);

    return MIN(tox_iteration_interval(Alice), tox_iteration_interval(Bob));
}
