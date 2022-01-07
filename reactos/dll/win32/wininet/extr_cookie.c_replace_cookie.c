
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
typedef TYPE_1__ cookie_t ;
typedef int cookie_container_t ;


 int add_cookie (int *,TYPE_1__*) ;
 int delete_cookie (TYPE_1__*) ;
 TYPE_1__* find_cookie (int *,int ) ;
 int substrz (int ) ;

__attribute__((used)) static void replace_cookie(cookie_container_t *container, cookie_t *new_cookie)
{
    cookie_t *old_cookie;

    old_cookie = find_cookie(container, substrz(new_cookie->name));
    if(old_cookie)
        delete_cookie(old_cookie);

    add_cookie(container, new_cookie);
}
