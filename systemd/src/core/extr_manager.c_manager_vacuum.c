
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Manager ;


 int assert (int *) ;
 int dynamic_user_vacuum (int *,int) ;
 int exec_runtime_vacuum (int *) ;
 int manager_vacuum_gid_refs (int *) ;
 int manager_vacuum_uid_refs (int *) ;

__attribute__((used)) static void manager_vacuum(Manager *m) {
        assert(m);


        dynamic_user_vacuum(m, 1);


        manager_vacuum_uid_refs(m);
        manager_vacuum_gid_refs(m);


        exec_runtime_vacuum(m);
}
