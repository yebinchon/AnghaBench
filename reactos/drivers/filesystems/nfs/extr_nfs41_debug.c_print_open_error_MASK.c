#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  ERROR_BAD_FILE_TYPE 141 
#define  ERROR_DIRECTORY 140 
#define  ERROR_REPARSE 139 
#define  ERROR_TOO_MANY_LINKS 138 
#define  STATUS_ACCESS_DENIED 137 
#define  STATUS_BAD_NETWORK_PATH 136 
#define  STATUS_FILE_INVALID 135 
#define  STATUS_NAME_TOO_LONG 134 
#define  STATUS_NETWORK_ACCESS_DENIED 133 
#define  STATUS_OBJECT_NAME_COLLISION 132 
#define  STATUS_OBJECT_NAME_INVALID 131 
#define  STATUS_OBJECT_NAME_NOT_FOUND 130 
#define  STATUS_OBJECT_PATH_NOT_FOUND 129 
#define  STATUS_SHARING_VIOLATION 128 

void FUNC1(int on, int status)
{
    if (!on) return;
    switch (status) {
    case STATUS_ACCESS_DENIED:
        FUNC0("[ERROR] nfs41_Create: STATUS_ACCESS_DENIED\n");
        break;
    case STATUS_NETWORK_ACCESS_DENIED:
        FUNC0("[ERROR] nfs41_Create: STATUS_NETWORK_ACCESS_DENIED\n");
        break;
    case STATUS_OBJECT_NAME_INVALID:
        FUNC0("[ERROR] nfs41_Create: STATUS_OBJECT_NAME_INVALID\n");
        break;
    case STATUS_OBJECT_NAME_COLLISION:
        FUNC0("[ERROR] nfs41_Create: STATUS_OBJECT_NAME_COLLISION\n");
        break;
    case STATUS_FILE_INVALID:
        FUNC0("[ERROR] nfs41_Create: STATUS_FILE_INVALID\n");
        break;
    case STATUS_OBJECT_NAME_NOT_FOUND:
        FUNC0("[ERROR] nfs41_Create: STATUS_OBJECT_NAME_NOT_FOUND\n");
        break;
    case STATUS_NAME_TOO_LONG:
        FUNC0("[ERROR] nfs41_Create: STATUS_NAME_TOO_LONG\n");
        break;
    case STATUS_OBJECT_PATH_NOT_FOUND:
        FUNC0("[ERROR] nfs41_Create: STATUS_OBJECT_PATH_NOT_FOUND\n");
        break;
    case STATUS_BAD_NETWORK_PATH:
        FUNC0("[ERROR] nfs41_Create: STATUS_BAD_NETWORK_PATH\n");
        break;
    case STATUS_SHARING_VIOLATION:
        FUNC0("[ERROR] nfs41_Create: STATUS_SHARING_VIOLATION\n");
        break;
    case ERROR_REPARSE:
        FUNC0("[ERROR] nfs41_Create: STATUS_REPARSE\n");
        break;
    case ERROR_TOO_MANY_LINKS:
        FUNC0("[ERROR] nfs41_Create: STATUS_TOO_MANY_LINKS\n");
        break;
    case ERROR_DIRECTORY:
        FUNC0("[ERROR] nfs41_Create: STATUS_FILE_IS_A_DIRECTORY\n");
        break;
    case ERROR_BAD_FILE_TYPE:
        FUNC0("[ERROR] nfs41_Create: STATUS_NOT_A_DIRECTORY\n");
        break;
    default:
        FUNC0("[ERROR] nfs41_Create: STATUS_INSUFFICIENT_RESOURCES\n");
        break;
    }
}