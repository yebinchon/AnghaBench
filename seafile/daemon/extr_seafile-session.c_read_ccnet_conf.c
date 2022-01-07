
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int message; } ;
typedef int GKeyFile ;
typedef TYPE_1__ GError ;


 int G_FILE_TEST_IS_REGULAR ;
 char* g_build_path (char*,char const*,char*,int *) ;
 int g_clear_error (TYPE_1__**) ;
 int g_file_test (char*,int ) ;
 int g_free (char*) ;
 int g_key_file_free (int *) ;
 char* g_key_file_get_string (int *,char*,char*,TYPE_1__**) ;
 int g_key_file_load_from_file (int *,char*,int ,TYPE_1__**) ;
 int * g_key_file_new () ;
 int seaf_warning (char*,int ) ;

__attribute__((used)) static void
read_ccnet_conf (const char *ccnet_dir, char **client_id, char **client_name)
{
    char *ccnet_conf_path = g_build_path ("/", ccnet_dir, "ccnet.conf", ((void*)0));
    GKeyFile *key_file = g_key_file_new ();
    GError *error = ((void*)0);

    if (!g_file_test (ccnet_conf_path, G_FILE_TEST_IS_REGULAR))
        goto out;

    if (!g_key_file_load_from_file (key_file, ccnet_conf_path, 0, &error)) {
        seaf_warning ("Failed to read ccnet.conf: %s.\n", error->message);
        g_clear_error (&error);
        goto out;
    }

    *client_id = g_key_file_get_string (key_file, "General", "ID", &error);
    if (error) {
        seaf_warning ("Failed to read client id from ccnet.conf: %s.\n", error->message);
        g_clear_error (&error);
        goto out;
    }

    *client_name = g_key_file_get_string (key_file, "General", "NAME", &error);
    if (error) {
        seaf_warning ("Failed to read client name from ccnet.conf: %s.\n", error->message);
        g_clear_error (&error);
        goto out;
    }

out:
    g_free (ccnet_conf_path);
    g_key_file_free (key_file);
}
