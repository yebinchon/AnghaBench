
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * locale; } ;
typedef TYPE_1__ Context ;


 int _VARIABLE_LC_MAX ;
 int mfree (int ) ;

__attribute__((used)) static void context_free_locale(Context *c) {
        int p;

        for (p = 0; p < _VARIABLE_LC_MAX; p++)
                c->locale[p] = mfree(c->locale[p]);
}
