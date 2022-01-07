
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVOID ;
typedef int NTSTATUS ;
typedef int LONGLONG ;


 int DbgP (char*,char const*,...) ;




void print_wait_status(int on, const char *prefix, NTSTATUS status,
                       const char *opcode, PVOID entry, LONGLONG xid)
{
    if (!on) return;
    switch (status) {
    case 129:
        if (opcode)
            DbgP("%s Got a wakeup call, finishing %s entry=%p xid=%lld\n",
                prefix, opcode, entry, xid);
        else
            DbgP("%s Got a wakeup call\n", prefix);
        break;
    case 128:
        DbgP("%s KeWaitForSingleObject returned STATUS_USER_APC\n", prefix);
        break;
    case 130:
        DbgP("%s KeWaitForSingleObject returned STATUS_ALERTED\n", prefix);
        break;
    default:
        DbgP("%s KeWaitForSingleObject returned %d\n", prefix, status);
    }
}
