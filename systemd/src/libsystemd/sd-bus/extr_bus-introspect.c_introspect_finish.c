
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct introspect {int introspection; int f; } ;


 char* TAKE_PTR (int ) ;
 int assert (struct introspect*) ;
 int fflush_and_check (int ) ;
 int fputs (char*,int ) ;
 int safe_fclose (int ) ;

int introspect_finish(struct introspect *i, char **ret) {
        int r;

        assert(i);

        fputs("</node>\n", i->f);

        r = fflush_and_check(i->f);
        if (r < 0)
                return r;

        i->f = safe_fclose(i->f);
        *ret = TAKE_PTR(i->introspection);

        return 0;
}
