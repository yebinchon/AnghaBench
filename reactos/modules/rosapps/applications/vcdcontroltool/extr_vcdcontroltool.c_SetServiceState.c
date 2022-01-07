
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HWND ;
typedef int BOOLEAN ;


 int EnableWindow (int ,int) ;
 int GetDlgItem (int ,int ) ;
 int IDC_DRIVERSTART ;
 int IDC_DRIVERSTOP ;
 int hDriverWnd ;

VOID
SetServiceState(BOOLEAN Started)
{
    HWND hControl;


    hControl = GetDlgItem(hDriverWnd, IDC_DRIVERSTART);
    EnableWindow(hControl, !Started);


    hControl = GetDlgItem(hDriverWnd, IDC_DRIVERSTOP);
    EnableWindow(hControl, Started);
}
