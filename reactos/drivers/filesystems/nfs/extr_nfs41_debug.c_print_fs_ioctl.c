
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DbgP (char*,...) ;
void print_fs_ioctl(int on, int op)
{
    if(!on) return;
    switch(op) {
        case 132:
            DbgP("IOCTL_NFS41_INVALCACHE\n");
            break;
        case 131:
            DbgP("IOCTL_NFS41_UPCALL\n");
            break;
        case 128:
            DbgP("IOCTL_NFS41_DOWNCALL\n");
            break;
        case 135:
            DbgP("IOCTL_NFS41_ADDCONN\n");
            break;
        case 134:
            DbgP("IOCTL_NFS41_DELCONN\n");
            break;
        case 133:
            DbgP("IOCTL_NFS41_GETSTATE\n");
            break;
        case 130:
            DbgP("IOCTL_NFS41_START\n");
            break;
        case 129:
            DbgP("IOCTL_NFS41_STOP\n");
            break;
        default:
            DbgP("UNKNOWN FS IOCTL %d\n", op);
    };
}
