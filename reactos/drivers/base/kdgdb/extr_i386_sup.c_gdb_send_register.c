
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum reg_name { ____Placeholder_reg_name } reg_name ;
typedef scalar_t__ ULONG_PTR ;
struct TYPE_2__ {scalar_t__ Thread; } ;
typedef int * PETHREAD ;
typedef int KDSTATUS ;


 int CurrentContext ;
 TYPE_1__ CurrentStateChange ;
 int KDDBGPRINT (char*) ;
 scalar_t__ PsGetThreadId (int *) ;
 void* ctx_to_reg (int *,int,unsigned short*) ;
 int * find_thread (scalar_t__,scalar_t__) ;
 scalar_t__ gdb_dbg_pid ;
 scalar_t__ gdb_dbg_tid ;
 int * gdb_input ;
 scalar_t__ gdb_tid_to_handle (scalar_t__) ;
 int hex_value (int ) ;
 int send_gdb_memory (void*,unsigned short) ;
 int send_gdb_packet (char*) ;
 void* thread_to_reg (int *,int,unsigned short*) ;

KDSTATUS
gdb_send_register(void)
{
    enum reg_name reg_name;
    void *ptr;
    unsigned short size;


    reg_name = (hex_value(gdb_input[1]) << 4) | hex_value(gdb_input[2]);

    if (((gdb_dbg_pid == 0) && (gdb_dbg_tid == 0)) ||
            gdb_tid_to_handle(gdb_dbg_tid) == PsGetThreadId((PETHREAD)(ULONG_PTR)CurrentStateChange.Thread))
    {

        ptr = ctx_to_reg(&CurrentContext, reg_name, &size);
    }
    else
    {
        PETHREAD DbgThread;

        DbgThread = find_thread(gdb_dbg_pid, gdb_dbg_tid);

        if (DbgThread == ((void*)0))
        {

            return send_gdb_packet("E03");
        }

        ptr = thread_to_reg(DbgThread, reg_name, &size);
    }

    if (!ptr)
    {

        return send_gdb_packet("xxxxxxxx");
    }
    else
    {
        KDDBGPRINT("KDDBG : Sending registers as memory.\n");
        return send_gdb_memory(ptr, size);
    }
}
