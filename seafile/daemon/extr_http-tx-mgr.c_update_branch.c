
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int gint64 ;
struct TYPE_9__ {int release; int * curl; } ;
struct TYPE_8__ {int token; int head; int repo_id; int host; int use_fileserver_port; } ;
typedef TYPE_1__ HttpTxTask ;
typedef TYPE_2__ Connection ;
typedef int CURL ;


 int HTTP_FORBIDDEN ;
 int HTTP_OK ;
 int TRUE ;
 int curl_easy_reset (int *) ;
 int g_free (char*) ;
 char* g_new0 (int ,int ) ;
 char* g_strdup_printf (char*,int ,int ,int ) ;
 int gchar ;
 int handle_curl_errors (TYPE_1__*,int) ;
 int handle_http_errors (TYPE_1__*,int) ;
 scalar_t__ http_put (int *,char*,int ,int *,int ,int *,int *,int*,char**,int *,int ,int*) ;
 int memcpy (char*,char*,int ) ;
 int notify_permission_error (TYPE_1__*,char*) ;
 int seaf_warning (char*,char*,...) ;

__attribute__((used)) static int
update_branch (HttpTxTask *task, Connection *conn)
{
    CURL *curl;
    char *url;
    int status;
    char *rsp_content;
    char *rsp_content_str = ((void*)0);
    gint64 rsp_size;
    int ret = 0;

    curl = conn->curl;

    if (!task->use_fileserver_port)
        url = g_strdup_printf ("%s/seafhttp/repo/%s/commit/HEAD/?head=%s",
                               task->host, task->repo_id, task->head);
    else
        url = g_strdup_printf ("%s/repo/%s/commit/HEAD/?head=%s",
                               task->host, task->repo_id, task->head);

    int curl_error;
    if (http_put (curl, url, task->token,
                  ((void*)0), 0,
                  ((void*)0), ((void*)0),
                  &status, &rsp_content, &rsp_size, TRUE, &curl_error) < 0) {
        conn->release = TRUE;
        handle_curl_errors (task, curl_error);
        ret = -1;
        goto out;
    }

    if (status != HTTP_OK) {
        seaf_warning ("Bad response code for PUT %s: %d.\n", url, status);
        handle_http_errors (task, status);

        if (status == HTTP_FORBIDDEN) {
            rsp_content_str = g_new0 (gchar, rsp_size + 1);
            memcpy (rsp_content_str, rsp_content, rsp_size);
            seaf_warning ("%s\n", rsp_content_str);
            notify_permission_error (task, rsp_content_str);
            g_free (rsp_content_str);
        }

        ret = -1;
    }

out:
    g_free (url);
    g_free (rsp_content);
    curl_easy_reset (curl);

    return ret;
}
