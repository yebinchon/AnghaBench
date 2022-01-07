
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct promptdisk_params {int* PathRequiredSize; int PathBufferSize; int PathBuffer; } ;
typedef int WCHAR ;
typedef int HWND ;


 int DPROMPT_BUFFERTOOSMALL ;
 int DPROMPT_SUCCESS ;
 int EndDialog (int ,int ) ;
 int GetDlgItem (int ,int ) ;
 int GetWindowTextW (int ,int *,int) ;
 int IDC_PATH ;
 int MAX_PATH ;
 int NO_ERROR ;
 int TRACE (char*,int) ;
 int debugstr_w (int ) ;
 int strcpyW (int ,int *) ;
 int strlenW (int *) ;

__attribute__((used)) static void promptdisk_ok(HWND hwnd, struct promptdisk_params *params)
{
    int requiredSize;
    WCHAR aux[MAX_PATH];
    GetWindowTextW(GetDlgItem(hwnd, IDC_PATH), aux, MAX_PATH);
    requiredSize = strlenW(aux)+1;

    if(params->PathRequiredSize)
    {
        *params->PathRequiredSize = requiredSize;
        TRACE("returning PathRequiredSize=%d\n",*params->PathRequiredSize);
    }
    if(!params->PathBuffer)
    {
        EndDialog(hwnd, NO_ERROR);
        return;
    }
    if(requiredSize > params->PathBufferSize)
    {
        EndDialog(hwnd, DPROMPT_BUFFERTOOSMALL);
        return;
    }
    strcpyW(params->PathBuffer, aux);
    TRACE("returning PathBuffer=%s\n", debugstr_w(params->PathBuffer));
    EndDialog(hwnd, DPROMPT_SUCCESS);
}
