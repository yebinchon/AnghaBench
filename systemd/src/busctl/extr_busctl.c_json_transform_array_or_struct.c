
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * sd_bus_message ;
typedef int JsonVariant ;


 int GREEDY_REALLOC (int **,size_t,size_t) ;
 int assert (int **) ;
 int bus_log_parse_error (int) ;
 int free (int **) ;
 int json_transform_one (int **,int **) ;
 int json_variant_new_array (int **,int **,size_t) ;
 int json_variant_unref_many (int **,size_t) ;
 int log_oom () ;
 int sd_bus_message_at_end (int **,int) ;

__attribute__((used)) static int json_transform_array_or_struct(sd_bus_message *m, JsonVariant **ret) {
        size_t n_elements = 0, n_allocated = 0;
        JsonVariant **elements = ((void*)0);
        int r;

        assert(m);
        assert(ret);

        for (;;) {
                r = sd_bus_message_at_end(m, 0);
                if (r < 0) {
                        bus_log_parse_error(r);
                        goto finish;
                }
                if (r > 0)
                        break;

                if (!GREEDY_REALLOC(elements, n_allocated, n_elements + 1)) {
                        r = log_oom();
                        goto finish;
                }

                r = json_transform_one(m, elements + n_elements);
                if (r < 0)
                        goto finish;

                n_elements++;
        }

        r = json_variant_new_array(ret, elements, n_elements);

finish:
        json_variant_unref_many(elements, n_elements);
        free(elements);

        return r;
}
