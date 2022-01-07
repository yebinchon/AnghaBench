
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int fputc (char,int ) ;
 int fputs (char*,int ) ;
 int free (char*) ;
 int stderr ;
 char* vstrmake (int *,int ) ;

__attribute__((used)) static int
textOut (va_list ap)
{
    char *str = vstrmake (((void*)0), ap);

    fputs ("Log file: ", stderr);
    fputs (str, stderr);
    fputc ('\n', stderr);
    free (str);
    return 0;
}
