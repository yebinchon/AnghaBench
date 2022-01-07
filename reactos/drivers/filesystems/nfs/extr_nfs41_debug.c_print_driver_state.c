
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DbgP (char*,...) ;





void print_driver_state(int state)
{
    switch (state) {
        case 131:
            DbgP("NFS41_START_DRIVER_STARTABLE\n");
            break;
        case 128:
            DbgP("NFS41_START_DRIVER_STOPPED\n");
            break;
        case 129:
            DbgP("NFS41_START_DRIVER_START_IN_PROGRESS\n");
            break;
        case 130:
            DbgP("NFS41_START_DRIVER_STARTED\n");
            break;
        default:
            DbgP("UNKNOWN DRIVER STATE %d\n", state);
    };

}
