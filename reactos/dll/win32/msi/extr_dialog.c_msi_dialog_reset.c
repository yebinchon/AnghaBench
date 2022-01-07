
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msi_dialog ;
typedef int UINT ;


 int msi_dialog_evaluate_control_conditions (int *) ;

__attribute__((used)) static UINT msi_dialog_reset( msi_dialog *dialog )
{

    return msi_dialog_evaluate_control_conditions( dialog );
}
