
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {int ui_level; } ;
typedef int MSIRECORD ;
typedef TYPE_1__ MSIPACKAGE ;
typedef int LPWSTR ;
typedef TYPE_1__* LPVOID ;
typedef int * LPCWSTR ;


 scalar_t__ ERROR_INSTALL_FAILURE ;
 scalar_t__ ERROR_SUCCESS ;
 int INSTALLUILEVEL_MASK ;
 int INSTALLUILEVEL_NONE ;
 int MB_OK ;
 scalar_t__ MSICONDITION_FALSE ;
 scalar_t__ MSI_EvaluateConditionW (TYPE_1__*,int *) ;
 int * MSI_RecordGetString (int *,int) ;
 int MessageBoxW (int *,int ,char const*,int ) ;
 int deformat_string (TYPE_1__*,int *,int *) ;
 int msi_free (int ) ;

__attribute__((used)) static UINT ITERATE_LaunchConditions(MSIRECORD *row, LPVOID param)
{
    MSIPACKAGE* package = param;
    LPCWSTR cond = ((void*)0);
    LPCWSTR message = ((void*)0);
    UINT r;

    static const WCHAR title[]=
        {'I','n','s','t','a','l','l',' ','F','a', 'i','l','e','d',0};

    cond = MSI_RecordGetString(row,1);

    r = MSI_EvaluateConditionW(package,cond);
    if (r == MSICONDITION_FALSE)
    {
        if ((package->ui_level & INSTALLUILEVEL_MASK) != INSTALLUILEVEL_NONE)
        {
            LPWSTR deformated;
            message = MSI_RecordGetString(row,2);
            deformat_string(package,message,&deformated);
            MessageBoxW(((void*)0),deformated,title,MB_OK);
            msi_free(deformated);
        }

        return ERROR_INSTALL_FAILURE;
    }

    return ERROR_SUCCESS;
}
