
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int IDC_TAG ;
 int SetDlgItemText (int ,int ,int ) ;
 int dialog ;
 int tag ;

__attribute__((used)) static int
guiTag (va_list ap)
{
    SetDlgItemText (dialog, IDC_TAG, tag);
    return 0;
}
