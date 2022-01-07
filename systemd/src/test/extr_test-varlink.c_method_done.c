
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VarlinkMethodFlags ;
typedef int Varlink ;
typedef int JsonVariant ;


 int EXIT_FAILURE ;
 int n_done ;
 int sd_event_exit (int ,int ) ;
 int varlink_get_event (int *) ;

__attribute__((used)) static int method_done(Varlink *link, JsonVariant *parameters, VarlinkMethodFlags flags, void *userdata) {

        if (++n_done == 2)
                sd_event_exit(varlink_get_event(link), EXIT_FAILURE);

        return 0;
}
