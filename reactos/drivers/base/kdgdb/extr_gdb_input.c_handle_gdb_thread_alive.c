
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef int * PETHREAD ;
typedef int KDSTATUS ;


 int KDDBGPRINT (char*,scalar_t__,...) ;
 int * find_thread (scalar_t__,scalar_t__) ;
 int * gdb_input ;
 scalar_t__ hex_to_pid (int *) ;
 scalar_t__ hex_to_tid (int *) ;
 int send_gdb_packet (char*) ;
 int * strstr (int *,char*) ;

__attribute__((used)) static
KDSTATUS
handle_gdb_thread_alive(void)
{
    ULONG_PTR Pid, Tid;
    PETHREAD Thread;
    KDSTATUS Status;
    Pid = hex_to_pid(&gdb_input[2]);
    Tid = hex_to_tid(strstr(gdb_input, ".") + 1);



    KDDBGPRINT("Checking if p%p.%p is alive.\n", Pid, Tid);


    Thread = find_thread(Pid, Tid);

    if (Thread != ((void*)0))
        Status = send_gdb_packet("OK");
    else
        Status = send_gdb_packet("E03");

    return Status;
}
