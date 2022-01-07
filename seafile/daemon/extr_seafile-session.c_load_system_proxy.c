
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_6__ {char const* text; } ;
typedef TYPE_1__ json_error_t ;
struct TYPE_8__ {int seaf_dir; } ;
struct TYPE_7__ {void* http_proxy_password; void* http_proxy_username; int http_proxy_port; void* http_proxy_addr; void* http_proxy_type; } ;
typedef TYPE_2__ SeafileSession ;


 int G_FILE_TEST_EXISTS ;
 char* g_build_filename (int ,char*,int *) ;
 int g_file_test (char*,int ) ;
 int g_free (char*) ;
 scalar_t__ g_strcmp0 (char const*,char*) ;
 void* g_strdup (char const*) ;
 int json_decref (int *) ;
 int * json_load_file (char*,int ,TYPE_1__*) ;
 int json_object_get_int_member (int *,char*) ;
 char const* json_object_get_string_member (int *,char*) ;
 TYPE_3__* seaf ;
 int seaf_warning (char*,...) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
load_system_proxy (SeafileSession *session)
{
    char *system_proxy_txt = g_build_filename (seaf->seaf_dir, "system-proxy.txt", ((void*)0));
    json_t *json = ((void*)0);
    if (!g_file_test (system_proxy_txt, G_FILE_TEST_EXISTS)) {
        seaf_warning ("Can't load system proxy: file %s doesn't exist\n", system_proxy_txt);
        goto out;
    }

    json_error_t jerror;
    json = json_load_file(system_proxy_txt, 0, &jerror);
    if (!json) {
        if (strlen(jerror.text) > 0)
            seaf_warning ("Failed to load system proxy information: %s.\n", jerror.text);
        else
            seaf_warning ("Failed to load system proxy information\n");
        goto out;
    }
    const char *type;
    type = json_object_get_string_member (json, "type");
    if (!type) {
        seaf_warning ("Failed to load system proxy information: proxy type missing\n");
        goto out;
    }
    if (strcmp(type, "none") != 0 && strcmp(type, "socks") != 0 && strcmp(type, "http") != 0) {
        seaf_warning ("Failed to load system proxy information: invalid proxy type %s\n", type);
        goto out;
    }
    if (g_strcmp0(type, "none") == 0) {
        goto out;
    }
    session->http_proxy_type = g_strdup(type);
    session->http_proxy_addr = g_strdup(json_object_get_string_member (json, "addr"));
    session->http_proxy_port = json_object_get_int_member (json, "port");
    session->http_proxy_username = g_strdup(json_object_get_string_member (json, "username"));
    session->http_proxy_password = g_strdup(json_object_get_string_member (json, "password"));

out:
    g_free (system_proxy_txt);
    if (json)
        json_decref(json);
}
