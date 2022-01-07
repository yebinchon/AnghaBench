
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* container; int entry; int data; int name; } ;
typedef TYPE_1__ cookie_t ;
struct TYPE_6__ {int cookie_list; int cookie_url; } ;
typedef TYPE_2__ cookie_container_t ;


 int TRACE (char*,int ,int ,int ) ;
 int debugstr_w (int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void add_cookie(cookie_container_t *container, cookie_t *new_cookie)
{
    TRACE("Adding %s=%s to %s\n", debugstr_w(new_cookie->name), debugstr_w(new_cookie->data),
          debugstr_w(container->cookie_url));

    list_add_tail(&container->cookie_list, &new_cookie->entry);
    new_cookie->container = container;
}
