
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int package; } ;
typedef TYPE_1__ msi_dialog ;
typedef int WCHAR ;
typedef int UINT ;


 int msi_validate_product_id (int ) ;

__attribute__((used)) static UINT event_validate_product_id( msi_dialog *dialog, const WCHAR *argument )
{
    return msi_validate_product_id( dialog->package );
}
