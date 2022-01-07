
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ExecuteTest (char*) ;
 int SIGALRM ;
 scalar_t__ WIFSIGNALED (int) ;
 int abort_test ;
 int alarm (int) ;
 int child_pid ;
 scalar_t__ copyfont (int *,char*) ;
 int exit (int) ;
 int fcnt ;
 int * fontlist ;
 int fork () ;
 int fprintf (int ,char*) ;
 int getRandom (int ,int) ;
 int printf (char*,char*) ;
 char* results_dir ;
 int signal (int ,int ) ;
 int sprintf (char*,char*,char*,int ) ;
 int stderr ;
 int unlink (char*) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static void
  do_test( void )
  {
    int i = getRandom( 0, (int)( fcnt - 1 ) );
    static int test_num = 0;
    char buffer[1024];


    sprintf( buffer, "%s/test%d", results_dir, test_num++ );

    if ( copyfont ( &fontlist[i], buffer ) )
    {
      signal( SIGALRM, abort_test );


      alarm( 20 );
      if ( ( child_pid = fork() ) == 0 )
        ExecuteTest( buffer );
      else if ( child_pid != -1 )
      {
        int status;


        waitpid( child_pid, &status, 0 );
        alarm( 0 );
        if ( WIFSIGNALED ( status ) )
          printf( "Error found in file `%s'\n", buffer );
        else
          unlink( buffer );
      }
      else
      {
        fprintf( stderr, "Can't fork test case.\n" );
        exit( 1 );
      }
      alarm( 0 );
    }
  }
