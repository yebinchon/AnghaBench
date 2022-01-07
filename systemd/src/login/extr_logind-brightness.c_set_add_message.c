
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int Set ;


 int assert (int **) ;
 int bus_message_hash_ops ;
 int sd_bus_message_get_expect_reply (int *) ;
 int sd_bus_message_ref (int *) ;
 int set_ensure_allocated (int **,int *) ;
 int set_put (int *,int *) ;

__attribute__((used)) static int set_add_message(Set **set, sd_bus_message *message) {
        int r;

        assert(set);

        if (!message)
                return 0;

        r = sd_bus_message_get_expect_reply(message);
        if (r <= 0)
                return r;

        r = set_ensure_allocated(set, &bus_message_hash_ops);
        if (r < 0)
                return r;

        r = set_put(*set, message);
        if (r < 0)
                return r;

        sd_bus_message_ref(message);
        return 1;
}
