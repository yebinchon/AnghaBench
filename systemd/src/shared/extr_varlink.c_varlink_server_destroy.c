
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* description; int event; int by_uid; int methods; } ;
typedef TYPE_1__ VarlinkServer ;


 int free (char*) ;
 int hashmap_free (int ) ;
 char* hashmap_steal_first_key (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int sd_event_unref (int ) ;
 int varlink_server_shutdown (TYPE_1__*) ;

__attribute__((used)) static VarlinkServer* varlink_server_destroy(VarlinkServer *s) {
        char *m;

        if (!s)
                return ((void*)0);

        varlink_server_shutdown(s);

        while ((m = hashmap_steal_first_key(s->methods)))
                free(m);

        hashmap_free(s->methods);
        hashmap_free(s->by_uid);

        sd_event_unref(s->event);

        free(s->description);

        return mfree(s);
}
