
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DbgP (char*,...) ;




void print_ioctl(int on, int op)
{
    if(!on) return;
    switch(op) {
        case 129:
            DbgP("IRP_MJ_FILE_SYSTEM_CONTROL\n");
            break;
        case 130:
            DbgP("IRP_MJ_DEVICE_CONTROL\n");
            break;
        case 128:
            DbgP("IRP_MJ_INTERNAL_DEVICE_CONTROL\n");
            break;
        default:
            DbgP("UNKNOWN MJ IRP %d\n", op);
    };
}
