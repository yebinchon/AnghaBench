
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int fputs (char*,int ) ;
 int stderr ;
 int textStatus (int ) ;

__attribute__((used)) static int
textWarning (va_list ap)
{
    fputs ("Warning: ", stderr);
    textStatus (ap);
    return 0;
}
