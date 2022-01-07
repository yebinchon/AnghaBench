
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* package; } ;
typedef TYPE_2__ msi_dialog ;
typedef int WCHAR ;
typedef int UINT ;
struct TYPE_4__ {int db; } ;


 int msi_set_property (int ,int ,int const*,int) ;
 int szReinstallMode ;

__attribute__((used)) static UINT event_reinstall_mode( msi_dialog *dialog, const WCHAR *argument )
{
    return msi_set_property( dialog->package->db, szReinstallMode, argument, -1 );
}
