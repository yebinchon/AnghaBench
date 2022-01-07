
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;


 int GID_INVALID ;
 int clean_ipc_internal (int ,int ,int) ;

int clean_ipc_by_uid(uid_t uid) {
        return clean_ipc_internal(uid, GID_INVALID, 1);
}
