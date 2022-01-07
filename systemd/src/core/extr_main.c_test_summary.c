
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Manager ;


 int assert (int *) ;
 int manager_dump_jobs (int *,int ,char*) ;
 int manager_dump_units (int *,int ,char*) ;
 int printf (char*) ;
 int stdout ;

__attribute__((used)) static void test_summary(Manager *m) {
        assert(m);

        printf("-> By units:\n");
        manager_dump_units(m, stdout, "\t");

        printf("-> By jobs:\n");
        manager_dump_jobs(m, stdout, "\t");
}
