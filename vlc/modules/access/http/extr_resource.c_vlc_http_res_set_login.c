
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_resource {char* password; char* username; int * response; } ;


 int free (char*) ;
 char* strdup (char const*) ;
 scalar_t__ unlikely (int ) ;
 int vlc_http_msg_destroy (int *) ;
 int vlc_http_msg_get_status (int *) ;

int vlc_http_res_set_login(struct vlc_http_resource *res,
                           const char *username, const char *password)
{
    char *user = ((void*)0);
    char *pass = ((void*)0);

    if (username != ((void*)0))
    {
        user = strdup(username);
        if (unlikely(user == ((void*)0)))
            return -1;

        pass = strdup((password != ((void*)0)) ? password : "");
        if (unlikely(pass == ((void*)0)))
        {
            free(user);
            return -1;
        }
    }

    free(res->password);
    free(res->username);
    res->username = user;
    res->password = pass;

    if (res->response != ((void*)0) && vlc_http_msg_get_status(res->response) == 401)
    {
        vlc_http_msg_destroy(res->response);
        res->response = ((void*)0);
    }

    return 0;
}
