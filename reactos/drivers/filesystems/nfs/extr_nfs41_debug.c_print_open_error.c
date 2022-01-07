
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DbgP (char*) ;
void print_open_error(int on, int status)
{
    if (!on) return;
    switch (status) {
    case 137:
        DbgP("[ERROR] nfs41_Create: STATUS_ACCESS_DENIED\n");
        break;
    case 133:
        DbgP("[ERROR] nfs41_Create: STATUS_NETWORK_ACCESS_DENIED\n");
        break;
    case 131:
        DbgP("[ERROR] nfs41_Create: STATUS_OBJECT_NAME_INVALID\n");
        break;
    case 132:
        DbgP("[ERROR] nfs41_Create: STATUS_OBJECT_NAME_COLLISION\n");
        break;
    case 135:
        DbgP("[ERROR] nfs41_Create: STATUS_FILE_INVALID\n");
        break;
    case 130:
        DbgP("[ERROR] nfs41_Create: STATUS_OBJECT_NAME_NOT_FOUND\n");
        break;
    case 134:
        DbgP("[ERROR] nfs41_Create: STATUS_NAME_TOO_LONG\n");
        break;
    case 129:
        DbgP("[ERROR] nfs41_Create: STATUS_OBJECT_PATH_NOT_FOUND\n");
        break;
    case 136:
        DbgP("[ERROR] nfs41_Create: STATUS_BAD_NETWORK_PATH\n");
        break;
    case 128:
        DbgP("[ERROR] nfs41_Create: STATUS_SHARING_VIOLATION\n");
        break;
    case 139:
        DbgP("[ERROR] nfs41_Create: STATUS_REPARSE\n");
        break;
    case 138:
        DbgP("[ERROR] nfs41_Create: STATUS_TOO_MANY_LINKS\n");
        break;
    case 140:
        DbgP("[ERROR] nfs41_Create: STATUS_FILE_IS_A_DIRECTORY\n");
        break;
    case 141:
        DbgP("[ERROR] nfs41_Create: STATUS_NOT_A_DIRECTORY\n");
        break;
    default:
        DbgP("[ERROR] nfs41_Create: STATUS_INSUFFICIENT_RESOURCES\n");
        break;
    }
}
