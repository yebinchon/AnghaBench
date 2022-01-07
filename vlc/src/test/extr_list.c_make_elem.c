
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_list {int dummy; } ;
struct test_elem {int i; struct vlc_list node; } ;


 int abort () ;
 struct test_elem* malloc (int) ;

__attribute__((used)) static struct vlc_list *make_elem(int i)
{
    struct test_elem *e = malloc(sizeof (*e));
    if (e == ((void*)0))
        abort();

    e->i = i;
    return &e->node;
}
