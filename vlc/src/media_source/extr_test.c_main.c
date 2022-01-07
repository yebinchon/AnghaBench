
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_media_tree () ;
 int test_media_tree_callbacks () ;
 int test_media_tree_callbacks_on_add_listener () ;

int main(void)
{
    test_media_tree();
    test_media_tree_callbacks();
    test_media_tree_callbacks_on_add_listener();
    return 0;
}
