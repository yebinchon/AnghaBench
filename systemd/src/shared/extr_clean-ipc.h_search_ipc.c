
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int gid_t ;


 int clean_ipc_internal (int ,int ,int) ;

__attribute__((used)) static inline int search_ipc(uid_t uid, gid_t gid) {
        return clean_ipc_internal(uid, gid, 0);
}
