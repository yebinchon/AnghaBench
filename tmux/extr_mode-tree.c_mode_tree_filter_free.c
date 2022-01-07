
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mode_tree_remove_ref (void*) ;

__attribute__((used)) static void
mode_tree_filter_free(void *data)
{
 mode_tree_remove_ref(data);
}
