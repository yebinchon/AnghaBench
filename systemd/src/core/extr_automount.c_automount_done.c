
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_5__ {int expire_event_source; void* expire_tokens; void* tokens; int where; } ;
typedef TYPE_1__ Automount ;


 TYPE_1__* AUTOMOUNT (int *) ;
 int assert (TYPE_1__*) ;
 int mfree (int ) ;
 int sd_event_source_unref (int ) ;
 void* set_free (void*) ;
 int unmount_autofs (TYPE_1__*) ;

__attribute__((used)) static void automount_done(Unit *u) {
        Automount *a = AUTOMOUNT(u);

        assert(a);

        unmount_autofs(a);

        a->where = mfree(a->where);

        a->tokens = set_free(a->tokens);
        a->expire_tokens = set_free(a->expire_tokens);

        a->expire_event_source = sd_event_source_unref(a->expire_event_source);
}
