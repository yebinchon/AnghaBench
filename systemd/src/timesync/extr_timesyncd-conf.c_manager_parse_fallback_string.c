
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ have_fallbacks; } ;
typedef TYPE_1__ Manager ;


 int SERVER_FALLBACK ;
 int manager_parse_server_string (TYPE_1__*,int ,char const*) ;

int manager_parse_fallback_string(Manager *m, const char *string) {
        if (m->have_fallbacks)
                return 0;

        return manager_parse_server_string(m, SERVER_FALLBACK, string);
}
