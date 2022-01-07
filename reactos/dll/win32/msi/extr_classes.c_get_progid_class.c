
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__ const* Parent; int const* Class; } ;
typedef TYPE_1__ const MSIPROGID ;
typedef int MSICLASS ;



__attribute__((used)) static const MSICLASS *get_progid_class( const MSIPROGID *progid )
{
    while (progid)
    {
        if (progid->Parent) progid = progid->Parent;
        if (progid->Class) return progid->Class;
        if (!progid->Parent || progid->Parent == progid) break;
    }
    return ((void*)0);
}
