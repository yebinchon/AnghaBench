
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VarlinkReplyFlags ;
typedef int Varlink ;
typedef int JsonVariant ;


 int EXIT_FAILURE ;
 int assert_se (int) ;
 int * json_variant_by_key (int *,char*) ;
 int json_variant_integer (int *) ;
 int n_done ;
 int sd_event_exit (int ,int ) ;
 int varlink_get_event (int *) ;

__attribute__((used)) static int reply(Varlink *link, JsonVariant *parameters, const char *error_id, VarlinkReplyFlags flags, void *userdata) {
        JsonVariant *sum;

        sum = json_variant_by_key(parameters, "sum");

        assert_se(json_variant_integer(sum) == 7+22);

        if (++n_done == 2)
                sd_event_exit(varlink_get_event(link), EXIT_FAILURE);

        return 0;
}
