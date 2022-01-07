
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int package; } ;
typedef TYPE_1__ msi_dialog ;
typedef int WCHAR ;
typedef int UINT ;


 int MSI_SetInstallLevel (int ,int) ;
 int TRACE (char*,int) ;
 int atolW (int const*) ;

__attribute__((used)) static UINT event_set_install_level( msi_dialog *dialog, const WCHAR *argument )
{
    int level = atolW( argument );

    TRACE("setting install level to %d\n", level);
    return MSI_SetInstallLevel( dialog->package, level );
}
