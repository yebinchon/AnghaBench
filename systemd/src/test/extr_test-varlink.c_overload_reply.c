
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VarlinkReplyFlags ;
typedef int Varlink ;
typedef int JsonVariant ;


 int VARLINK_ERROR_DISCONNECTED ;
 int assert_se (int ) ;
 int log_debug (char*,int ) ;
 int sd_event_exit (int ,int ) ;
 int streq (char const*,int ) ;
 int strna (char const*) ;
 int varlink_get_event (int *) ;

__attribute__((used)) static int overload_reply(Varlink *link, JsonVariant *parameters, const char *error_id, VarlinkReplyFlags flags, void *userdata) {




        log_debug("Over reply triggered with error: %s", strna(error_id));
        assert_se(streq(error_id, VARLINK_ERROR_DISCONNECTED));
        sd_event_exit(varlink_get_event(link), 0);

        return 0;
}
