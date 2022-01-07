
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int gint64 ;
struct TYPE_8__ {int message; } ;
struct TYPE_7__ {scalar_t__ st_size; int st_mode; } ;
typedef TYPE_1__ STAT_STRUCT ;
typedef TYPE_2__ GError ;
typedef int GDir ;


 int CCNET_DOMAIN ;
 scalar_t__ STAT_FUNC (char*,TYPE_1__*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int errno ;
 char* g_build_filename (char const*,char const*,int *) ;
 int g_dir_close (int *) ;
 int * g_dir_open (char const*,int ,TYPE_2__**) ;
 char* g_dir_read_name (int *) ;
 int g_free (char*) ;
 int g_set_error (TYPE_2__**,int ,int ,char*,char const*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static gint64
calc_recursively (const char *path, GError **calc_error)
{
    gint64 sum = 0;

    GError *error = ((void*)0);
    GDir *folder = g_dir_open(path, 0, &error);
    if (!folder) {
        g_set_error (calc_error, CCNET_DOMAIN, 0,
                     "g_open() dir %s failed:%s\n", path, error->message);
        return -1;
    }

    const char *name = ((void*)0);
    while ((name = g_dir_read_name(folder)) != ((void*)0)) {
        STAT_STRUCT sb;
        char *full_path= g_build_filename (path, name, ((void*)0));
        if (STAT_FUNC(full_path, &sb) < 0) {
            g_set_error (calc_error, CCNET_DOMAIN, 0, "failed to stat on %s: %s\n",
                         full_path, strerror(errno));
            g_free(full_path);
            g_dir_close(folder);
            return -1;
        }

        if (S_ISDIR(sb.st_mode)) {
            gint64 size = calc_recursively(full_path, calc_error);
            if (size < 0) {
                g_free (full_path);
                g_dir_close (folder);
                return -1;
            }
            sum += size;
            g_free(full_path);
        } else if (S_ISREG(sb.st_mode)) {
            sum += sb.st_size;
            g_free(full_path);
        }
    }

    g_dir_close (folder);
    return sum;
}
