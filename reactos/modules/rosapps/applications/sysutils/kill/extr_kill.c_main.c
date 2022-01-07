
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBG_UNREFERENCED_LOCAL_VARIABLE (char) ;
 char ExecuteKill (char*) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

int main(int argc, char *argv[])
{
  char tail;
  DBG_UNREFERENCED_LOCAL_VARIABLE(tail);

  if (argc < 2)
  {
      fprintf( stderr, "Usage: %s PID (Process ID) \n", argv[0] );
      return 1;
  }
  tail = ExecuteKill(argv[1]);
  return 0;
}
