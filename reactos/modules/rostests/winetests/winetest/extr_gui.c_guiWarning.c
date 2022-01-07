
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int MB_ICONWARNING ;
 int MB_OK ;
 int MessageBox (int ,char*,char*,int) ;
 int dialog ;
 int free (char*) ;
 char* vstrmake (int *,int ) ;

__attribute__((used)) static int
guiWarning (va_list ap)
{
    char *str = vstrmake (((void*)0), ap);

    MessageBox (dialog, str, "Warning", MB_ICONWARNING | MB_OK);
    free (str);
    return 0;
}
