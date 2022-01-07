
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int IDC_OUT ;
 int SetDlgItemText (int ,int ,char*) ;
 int dialog ;
 int free (char*) ;
 char* vstrmake (int *,int ) ;

__attribute__((used)) static int
guiOut (va_list ap)
{
    char *str = vstrmake (((void*)0), ap);

    SetDlgItemText (dialog, IDC_OUT, str);
    free (str);
    return 0;
}
