
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int const i_major; int const i_minor; int const i_revision; int const i_extra; } ;
struct TYPE_6__ {TYPE_1__ release; } ;
typedef TYPE_2__ update_t ;


 scalar_t__* PACKAGE_VERSION_DEV ;




 int assert (TYPE_2__*) ;

bool update_NeedUpgrade( update_t *p_update )
{
    assert( p_update );

    static const int current[4] = {
        130,
        129,
        128,
        131
    };
    const int latest[4] = {
        p_update->release.i_major,
        p_update->release.i_minor,
        p_update->release.i_revision,
        p_update->release.i_extra
    };

    for (unsigned i = 0; i < sizeof latest / sizeof *latest; i++) {

        if (latest[i] > current[i])
            return 1;


        if (latest[i] < current[i])
            return 0;
    }


    if (*PACKAGE_VERSION_DEV)
        return 1;


    return 0;
}
