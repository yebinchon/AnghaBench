
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_7__ {int sys; } ;


 int Clean (TYPE_1__*) ;
 int CommonWindowClean (int ,int *) ;
 int VLC_OBJECT (TYPE_1__*) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void Close(vout_display_t *vd)
{
    Clean(vd);

    CommonWindowClean(VLC_OBJECT(vd), &vd->sys->sys);

    free(vd->sys);
}
