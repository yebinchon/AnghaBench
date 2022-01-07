
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FT_UNUSED (int) ;
 int SIGFPE ;
 int child_pid ;
 int kill (int ,int ) ;
 int write (int,char*,int) ;

__attribute__((used)) static void
  abort_test( int sig )
  {
    FT_UNUSED( sig );


    kill( child_pid, SIGFPE );
    write( 2, "Timeout... ", 11 );
  }
