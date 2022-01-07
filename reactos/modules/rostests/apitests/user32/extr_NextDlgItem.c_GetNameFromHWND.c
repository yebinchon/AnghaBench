
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int GetDlgCtrlID (int ) ;
 char const* GetNameFromID (int ) ;

__attribute__((used)) static const char *
GetNameFromHWND(HWND hwnd)
{
    return GetNameFromID(GetDlgCtrlID(hwnd));
}
