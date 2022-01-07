
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IntNative ;


 int cleanUpAndFail (int) ;
 int fprintf (int ,char*,char*) ;
 char* progName ;
 int stderr ;

__attribute__((used)) static
void mySignalCatcher ( IntNative n )
{
   fprintf ( stderr,
             "\n%s: Control-C or similar caught, quitting.\n",
             progName );
   cleanUpAndFail(1);
}
