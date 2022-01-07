
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gid_t ;


 int UID_INVALID ;
 int clean_ipc_internal (int ,int ,int) ;

int clean_ipc_by_gid(gid_t gid) {
        return clean_ipc_internal(UID_INVALID, gid, 1);
}
