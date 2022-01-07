
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_error ;
typedef int Unit ;
typedef int * Manager ;


 int assert (int **) ;
 int manager_dispatch_load_queue (int **) ;
 int manager_load_unit_prepare (int **,char const*,char const*,int *,int **) ;
 int * unit_follow_merge (int *) ;

int manager_load_unit(
                Manager *m,
                const char *name,
                const char *path,
                sd_bus_error *e,
                Unit **_ret) {

        int r;

        assert(m);
        assert(_ret);




        r = manager_load_unit_prepare(m, name, path, e, _ret);
        if (r != 0)
                return r;

        manager_dispatch_load_queue(m);

        *_ret = unit_follow_merge(*_ret);
        return 0;
}
