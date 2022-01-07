
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const** data; } ;
typedef TYPE_1__ Context ;


 size_t PROP_CHASSIS ;
 int assert (TYPE_1__*) ;
 char* fallback_chassis () ;
 int isempty (char const*) ;
 char* strdup (char*) ;
 char* strjoin (char*,char const*) ;

__attribute__((used)) static char* context_fallback_icon_name(Context *c) {
        const char *chassis;

        assert(c);

        if (!isempty(c->data[PROP_CHASSIS]))
                return strjoin("computer-", c->data[PROP_CHASSIS]);

        chassis = fallback_chassis();
        if (chassis)
                return strjoin("computer-", chassis);

        return strdup("computer");
}
