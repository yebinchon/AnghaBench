
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sa ;
struct TYPE_5__ {scalar_t__ in_use; } ;
struct TYPE_4__ {int nLength; int bInheritHandle; int * lpSecurityDescriptor; } ;
typedef TYPE_1__ SECURITY_ATTRIBUTES ;
typedef void* HANDLE ;


 int * CreateMutex (int *,int ,char*) ;
 int CreatePipe (void**,void**,TYPE_1__*,int ) ;
 scalar_t__ ExecuteDetachedProgram (int ,int ,void*,void*) ;
 int FALSE ;
 int * SniffEmacs ;
 int SniffEmacsReadThread ;
 int TRUE ;
 int _ (int ) ;
 scalar_t__ _beginthread (int ,int ,int *) ;
 int close (int) ;
 int dup2 (int,int ) ;
 int execvp (int ,int *) ;
 int exit (int) ;
 int fd_from_sniff ;
 int fd_to_sniff ;
 int fflush (int ) ;
 int fileno (int ) ;
 scalar_t__ fork () ;
 int fputs (int ,int ) ;
 TYPE_2__ gui ;
 int gui_exit (int) ;
 int * hBufferMutex ;
 void* handle_from_sniff ;
 void* handle_to_sniff ;
 int msg_sniff_disconnect ;
 scalar_t__ pipe (int*) ;
 void* readthread_handle ;
 int sleep (int) ;
 int sniff_connected ;
 scalar_t__ sniffemacs_handle ;
 scalar_t__ sniffemacs_pid ;
 int stdin ;
 int stdout ;

__attribute__((used)) static int
ConnectToSniffEmacs()
{
    int ToSniffEmacs[2], FromSniffEmacs[2];

    if (pipe(ToSniffEmacs) != 0)
 return 1;
    if (pipe(FromSniffEmacs) != 0)
 return 1;


    if ((sniffemacs_pid=fork()) == 0)
    {



 close(ToSniffEmacs[1]);
 close(FromSniffEmacs[0]);

 dup2(ToSniffEmacs[0],fileno(stdin));
 dup2(FromSniffEmacs[1],fileno(stdout));

 close(ToSniffEmacs[0]);
 close(FromSniffEmacs[1]);


 execvp (SniffEmacs[0], SniffEmacs);
 {

     sleep(1);
     fputs(_(msg_sniff_disconnect), stdout);
     fflush(stdout);
     sleep(3);




     exit(1);
 }
 return 1;
    }
    else if (sniffemacs_pid > 0)
    {

 close(ToSniffEmacs[0]);
 fd_to_sniff = ToSniffEmacs[1];
 close(FromSniffEmacs[1]);
 fd_from_sniff = FromSniffEmacs[0];
 sniff_connected = 1;
 return 0;
    }
    else
 return 1;

}
