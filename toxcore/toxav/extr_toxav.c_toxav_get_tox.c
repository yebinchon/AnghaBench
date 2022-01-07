
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ m; } ;
typedef TYPE_1__ ToxAV ;
typedef int Tox ;



Tox *toxav_get_tox(const ToxAV *av)
{
    return (Tox *) av->m;
}
