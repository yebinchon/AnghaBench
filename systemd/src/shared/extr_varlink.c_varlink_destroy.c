
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int description; int server; } ;
typedef TYPE_1__ Varlink ;


 int assert (int) ;
 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int varlink_clear (TYPE_1__*) ;

__attribute__((used)) static Varlink* varlink_destroy(Varlink *v) {
        if (!v)
                return ((void*)0);



        assert(!v->server);

        varlink_clear(v);

        free(v->description);
        return mfree(v);
}
