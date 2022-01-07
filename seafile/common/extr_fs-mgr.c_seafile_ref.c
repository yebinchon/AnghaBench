
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref_count; } ;
typedef TYPE_1__ Seafile ;



void
seafile_ref (Seafile *seafile)
{
    ++seafile->ref_count;
}
