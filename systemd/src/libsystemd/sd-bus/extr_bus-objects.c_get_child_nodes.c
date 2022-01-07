
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * node ;
typedef int sd_bus_error ;
typedef int * sd_bus ;
typedef int Set ;


 int ENOMEM ;
 int add_subtree_to_set (int **,char const*,int **,unsigned int,int *,int *) ;
 int assert (char const*) ;
 int set_free_free (int *) ;
 int * set_new (int *) ;
 int string_hash_ops ;

__attribute__((used)) static int get_child_nodes(
                sd_bus *bus,
                const char *prefix,
                struct node *n,
                unsigned flags,
                Set **_s,
                sd_bus_error *error) {

        Set *s = ((void*)0);
        int r;

        assert(bus);
        assert(prefix);
        assert(n);
        assert(_s);

        s = set_new(&string_hash_ops);
        if (!s)
                return -ENOMEM;

        r = add_subtree_to_set(bus, prefix, n, flags, s, error);
        if (r < 0) {
                set_free_free(s);
                return r;
        }

        *_s = s;
        return 0;
}
