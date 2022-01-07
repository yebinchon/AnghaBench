
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
struct stat {int st_mtim; } ;
typedef int sd_bus_message ;
struct TYPE_4__ {scalar_t__ vc_mtime; int vc_keymap_toggle; int vc_keymap; int * vc_cache; } ;
typedef TYPE_1__ Context ;


 int ENOENT ;
 scalar_t__ USEC_INFINITY ;
 int context_free_vconsole (TYPE_1__*) ;
 int errno ;
 int parse_env_file (int *,char*,char*,int *,char*,int *) ;
 int * sd_bus_message_ref (int *) ;
 int sd_bus_message_unref (int *) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ timespec_load (int *) ;

int vconsole_read_data(Context *c, sd_bus_message *m) {
        struct stat st;
        usec_t t;
        int r;


        if (m) {
                if (m == c->vc_cache)
                        return 0;

                sd_bus_message_unref(c->vc_cache);
                c->vc_cache = sd_bus_message_ref(m);
        }

        if (stat("/etc/vconsole.conf", &st) < 0) {
                if (errno != ENOENT)
                        return -errno;

                c->vc_mtime = USEC_INFINITY;
                context_free_vconsole(c);
                return 0;
        }


        t = timespec_load(&st.st_mtim);
        if (c->vc_mtime != USEC_INFINITY && t == c->vc_mtime)
                return 0;

        c->vc_mtime = t;
        context_free_vconsole(c);

        r = parse_env_file(((void*)0), "/etc/vconsole.conf",
                           "KEYMAP", &c->vc_keymap,
                           "KEYMAP_TOGGLE", &c->vc_keymap_toggle);
        if (r < 0)
                return r;

        return 0;
}
