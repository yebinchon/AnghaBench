
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int scale; } ;
typedef TYPE_1__ msi_dialog ;
typedef int INT ;


 int MulDiv (int ,int ,int) ;

__attribute__((used)) static INT msi_dialog_scale_unit( msi_dialog *dialog, INT val )
{
    return MulDiv( val, dialog->scale, 12 );
}
