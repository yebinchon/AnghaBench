
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* psz_path; struct TYPE_4__* psz_domain; struct TYPE_4__* psz_value; struct TYPE_4__* psz_name; } ;
typedef TYPE_1__ http_cookie_t ;


 int assert (int ) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void cookie_destroy(http_cookie_t *cookie)
{
    assert(cookie != ((void*)0));
    free(cookie->psz_name);
    free(cookie->psz_value);
    free(cookie->psz_domain);
    free(cookie->psz_path);
    free(cookie);
}
