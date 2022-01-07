
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* package; } ;
typedef TYPE_2__ msi_dialog ;
struct TYPE_4__ {int db; } ;
typedef int * LPWSTR ;
typedef int LPCWSTR ;
typedef scalar_t__ BOOL ;


 int * msi_dup_property (int ,int ) ;
 int * strdupW (int ) ;

__attribute__((used)) static LPWSTR msi_dialog_dup_property( msi_dialog *dialog, LPCWSTR property, BOOL indirect )
{
    LPWSTR prop = ((void*)0);

    if (!property)
        return ((void*)0);

    if (indirect)
        prop = msi_dup_property( dialog->package->db, property );

    if (!prop)
        prop = strdupW( property );

    return prop;
}
