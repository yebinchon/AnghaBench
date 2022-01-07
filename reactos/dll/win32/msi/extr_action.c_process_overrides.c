
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_4__ {int db; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef int BOOL ;


 int FALSE ;
 int INSTALLSTATE_ABSENT ;
 int INSTALLSTATE_ADVERTISED ;
 int INSTALLSTATE_LOCAL ;
 int INSTALLSTATE_SOURCE ;
 int INSTALLSTATE_UNKNOWN ;
 int msi_set_property (int ,int ,int ,int) ;
 int process_state_property (TYPE_1__*,int,char const*,int ) ;
 int szOne ;
 int szPreselected ;
 char const* szReinstall ;
 char const* szRemove ;

__attribute__((used)) static BOOL process_overrides( MSIPACKAGE *package, int level )
{
    static const WCHAR szAddLocal[] =
        {'A','D','D','L','O','C','A','L',0};
    static const WCHAR szAddSource[] =
        {'A','D','D','S','O','U','R','C','E',0};
    static const WCHAR szAdvertise[] =
        {'A','D','V','E','R','T','I','S','E',0};
    BOOL ret = FALSE;
    ret |= process_state_property( package, level, szAddLocal, INSTALLSTATE_LOCAL );
    ret |= process_state_property( package, level, szRemove, INSTALLSTATE_ABSENT );
    ret |= process_state_property( package, level, szAddSource, INSTALLSTATE_SOURCE );
    ret |= process_state_property( package, level, szReinstall, INSTALLSTATE_UNKNOWN );
    ret |= process_state_property( package, level, szAdvertise, INSTALLSTATE_ADVERTISED );

    if (ret)
        msi_set_property( package->db, szPreselected, szOne, -1 );

    return ret;
}
