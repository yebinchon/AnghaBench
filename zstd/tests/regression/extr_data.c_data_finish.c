
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int data_free_paths (int ) ;
 int free (int *) ;
 int g_data ;
 int * g_data_dir ;

void data_finish(void) {
    data_free_paths(g_data);
    free(g_data_dir);
    g_data_dir = ((void*)0);
}
