
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int exit (int) ;
 int guiError (int ) ;

__attribute__((used)) static int
guiFatal (va_list ap)
{
    guiError (ap);
    exit (1);
}
