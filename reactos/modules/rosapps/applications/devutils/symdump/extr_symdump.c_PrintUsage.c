
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;


 int printf (char*) ;

VOID
PrintUsage()
{
 printf("Syntax:\n\n");
 printf("dumpsym <file> [-sp=<symbolpath>] [-p] [<symname>]\n\n");
 printf("<file>           The PE file you want to dump the symbols of\n");
 printf("-sp=<symbolpath> Path to your symbol files.\n");
 printf("                 Default is MS symbol server.\n");
 printf("-p               Enable struct positions.\n");
 printf("<symname>        A name of a Symbol, you want to dump\n");
 printf("                 Default is all symbols.\n");
 printf("\n");
}
