
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t COMPILER_DEFAULT ;
 char*** COMPILER_Names ;
 int COMPILER_QTY ;
 char* USAGE ;
 int fprintf (int ,char*,...) ;
 int stderr ;

int ShowUsage( char *szError )
{ int i;

  fprintf( stderr, USAGE );

  fprintf( stderr, "Current default <COMPILER>: %s\n",
     COMPILER_Names[COMPILER_DEFAULT][0] );

  fprintf( stderr, "Acceptable parameters for <COMPILER> are:\n" );
  for (i=1; i < COMPILER_QTY; i++)
      fprintf( stderr, "     %-15.15s     %s\n",
         COMPILER_Names[i][0],
         COMPILER_Names[i][1] );
  fprintf(stderr, szError);
  return 0;
}
