
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pid; } ;
typedef TYPE_1__ crash_blackbox_t ;
typedef int blackbox ;


 int GetCurrentProcessId () ;
 int SetErrorMode (int ) ;
 int SetUnhandledExceptionFilter (int *) ;
 int save_blackbox (char*,TYPE_1__*,int) ;
 int trace (char*) ;

__attribute__((used)) static void doCrash(int argc, char** argv)
{
    volatile char* p;


    SetErrorMode( 0 );
    SetUnhandledExceptionFilter( ((void*)0) );

    if (argc >= 4)
    {
        crash_blackbox_t blackbox;
        blackbox.pid=GetCurrentProcessId();
        save_blackbox(argv[3], &blackbox, sizeof(blackbox));
    }


    trace("child: crashing...\n");
    p=((void*)0);
    *p=0;
}
