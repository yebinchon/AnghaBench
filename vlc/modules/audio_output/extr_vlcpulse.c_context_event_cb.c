
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int pa_proplist ;
typedef int pa_context ;


 int msg_Warn (int *,char*,char const*) ;

__attribute__((used)) static void context_event_cb(pa_context *c, const char *name, pa_proplist *pl,
                             void *userdata)
{
    vlc_object_t *obj = userdata;

    msg_Warn (obj, "unhandled context event \"%s\"", name);
    (void) c;
    (void) pl;
}
