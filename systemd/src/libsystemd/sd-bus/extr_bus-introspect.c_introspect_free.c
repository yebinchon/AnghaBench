
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct introspect {int introspection; int f; } ;


 int assert (struct introspect*) ;
 int free (int ) ;
 int safe_fclose (int ) ;

void introspect_free(struct introspect *i) {
        assert(i);



        safe_fclose(i->f);
        free(i->introspection);
}
