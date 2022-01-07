
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int printf (char*) ;

__attribute__((used)) static void
exit_usage(void)
{
 (void) printf("usage: ");
 (void) printf("randwritecomp <file> [-s] [nwrites]\n");
 exit(EXIT_FAILURE);
}
