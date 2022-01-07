
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ UNIT_FILE_SYSTEM ;
 int ansi_highlight_red () ;
 int ansi_normal () ;
 scalar_t__ arg_scope ;
 int assert (char const*) ;
 int log_warning (char*,int ,int ,char const*,char*) ;

__attribute__((used)) static void warn_unit_file_changed(const char *name) {
        assert(name);

        log_warning("%sWarning:%s The unit file, source configuration file or drop-ins of %s changed on disk. Run 'systemctl%s daemon-reload' to reload units.",
                    ansi_highlight_red(),
                    ansi_normal(),
                    name,
                    arg_scope == UNIT_FILE_SYSTEM ? "" : " --user");
}
