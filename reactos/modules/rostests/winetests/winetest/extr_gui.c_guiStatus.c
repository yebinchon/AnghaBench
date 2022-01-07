
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int IDC_SB ;
 int SetDlgItemText (int ,int ,char*) ;
 int dialog ;
 int free (char*) ;
 char* vstrmake (size_t*,int ) ;

__attribute__((used)) static int
guiStatus (va_list ap)
{
    size_t len;
    char *str = vstrmake (&len, ap);

    if (len > 128) str[129] = 0;
    SetDlgItemText (dialog, IDC_SB, str);
    free (str);
    return 0;
}
