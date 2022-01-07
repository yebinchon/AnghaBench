
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct security_info {int system_call_filter; int system_call_architectures; int supplementary_groups; int device_policy; int notify_access; int keyring_mode; int root_image; int root_directory; int protect_system; int protect_home; int user; int fragment_path; int load_state; int type; int id; } ;


 int free (int ) ;
 int set_free_free (int ) ;
 int strv_free (int ) ;

__attribute__((used)) static void security_info_free(struct security_info *i) {
        if (!i)
                return;

        free(i->id);
        free(i->type);
        free(i->load_state);
        free(i->fragment_path);

        free(i->user);

        free(i->protect_home);
        free(i->protect_system);

        free(i->root_directory);
        free(i->root_image);

        free(i->keyring_mode);
        free(i->notify_access);

        free(i->device_policy);

        strv_free(i->supplementary_groups);
        strv_free(i->system_call_architectures);

        set_free_free(i->system_call_filter);
}
