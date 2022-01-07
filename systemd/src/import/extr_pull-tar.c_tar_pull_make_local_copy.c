
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ force_local; int settings_path; int local; int image_root; struct TYPE_5__* settings_job; scalar_t__ settings; int final_path; struct TYPE_5__* tar_job; } ;
typedef TYPE_1__ TarPull ;


 int COPY_REFLINK ;
 int COPY_REPLACE ;
 int EEXIST ;
 int ENOENT ;
 int assert (TYPE_1__*) ;
 int copy_file_atomic (int ,char const*,int,int ,int ,int) ;
 int log_debug_errno (int,char*) ;
 int log_info (char*,char const*) ;
 int log_warning_errno (int,char*,char const*) ;
 int pull_make_local_copy (int ,int ,int ,scalar_t__) ;
 char* strjoina (int ,char*,int ,char*) ;
 int tar_pull_determine_path (TYPE_1__*,char*,int *) ;

__attribute__((used)) static int tar_pull_make_local_copy(TarPull *i) {
        int r;

        assert(i);
        assert(i->tar_job);

        if (!i->local)
                return 0;

        r = pull_make_local_copy(i->final_path, i->image_root, i->local, i->force_local);
        if (r < 0)
                return r;

        if (i->settings) {
                const char *local_settings;
                assert(i->settings_job);

                r = tar_pull_determine_path(i, ".nspawn", &i->settings_path);
                if (r < 0)
                        return r;

                local_settings = strjoina(i->image_root, "/", i->local, ".nspawn");

                r = copy_file_atomic(i->settings_path, local_settings, 0664, 0, 0, COPY_REFLINK | (i->force_local ? COPY_REPLACE : 0));
                if (r == -EEXIST)
                        log_warning_errno(r, "Settings file %s already exists, not replacing.", local_settings);
                else if (r == -ENOENT)
                        log_debug_errno(r, "Skipping creation of settings file, since none was found.");
                else if (r < 0)
                        log_warning_errno(r, "Failed to copy settings files %s, ignoring: %m", local_settings);
                else
                        log_info("Created new settings file %s.", local_settings);
        }

        return 0;
}
