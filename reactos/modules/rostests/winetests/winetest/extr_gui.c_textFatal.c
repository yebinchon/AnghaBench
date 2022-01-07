
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int exit (int) ;
 int textError (int ) ;

__attribute__((used)) static int
textFatal (va_list ap)
{
    textError (ap);
    exit (1);
}
