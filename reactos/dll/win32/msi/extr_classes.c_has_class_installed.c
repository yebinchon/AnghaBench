
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ action; int ProgID; } ;
typedef int MSIPROGID ;
typedef TYPE_1__ MSICLASS ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ INSTALLSTATE_LOCAL ;
 TYPE_1__* get_progid_class (int const*) ;

__attribute__((used)) static BOOL has_class_installed( const MSIPROGID *progid )
{
    const MSICLASS *class = get_progid_class( progid );
    if (!class || !class->ProgID) return FALSE;
    return (class->action == INSTALLSTATE_LOCAL);
}
