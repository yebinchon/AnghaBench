
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int manager; } ;
typedef TYPE_1__ Unit ;


 int ANSI_HIGHLIGHT ;
 int ANSI_NORMAL ;
 int DISABLE_WARNING_FORMAT_NONLITERAL ;
 int REENABLE_WARNING ;
 int STATUS_TYPE_NORMAL ;
 scalar_t__ log_get_show_color () ;
 int manager_status_printf (int ,int ,char const*,char const*,char const*) ;
 char* strjoina (int ,char const*,int ) ;
 char* unit_status_string (TYPE_1__*) ;

void unit_status_printf(Unit *u, const char *status, const char *unit_status_msg_format) {
        const char *d;

        d = unit_status_string(u);
        if (log_get_show_color())
                d = strjoina(ANSI_HIGHLIGHT, d, ANSI_NORMAL);

        DISABLE_WARNING_FORMAT_NONLITERAL;
        manager_status_printf(u->manager, STATUS_TYPE_NORMAL, status, unit_status_msg_format, d);
        REENABLE_WARNING;
}
