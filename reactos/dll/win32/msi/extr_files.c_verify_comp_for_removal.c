
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int Action; int Attributes; } ;
typedef TYPE_1__ MSICOMPONENT ;
typedef int BOOL ;


 int FALSE ;



 int TRUE ;
 int msidbComponentAttributesSourceOnly ;
 scalar_t__ msidbRemoveFileInstallModeOnBoth ;
 scalar_t__ msidbRemoveFileInstallModeOnInstall ;
 scalar_t__ msidbRemoveFileInstallModeOnRemove ;

__attribute__((used)) static BOOL verify_comp_for_removal(MSICOMPONENT *comp, UINT install_mode)
{

    if (comp->Action != 128 &&
        comp->Attributes & msidbComponentAttributesSourceOnly &&
        (install_mode == msidbRemoveFileInstallModeOnRemove ||
         install_mode == msidbRemoveFileInstallModeOnBoth)) return TRUE;

    switch (comp->Action)
    {
    case 129:
    case 128:
        if (install_mode == msidbRemoveFileInstallModeOnInstall ||
            install_mode == msidbRemoveFileInstallModeOnBoth) return TRUE;
        break;
    case 130:
        if (install_mode == msidbRemoveFileInstallModeOnRemove ||
            install_mode == msidbRemoveFileInstallModeOnBoth) return TRUE;
        break;
    default: break;
    }
    return FALSE;
}
