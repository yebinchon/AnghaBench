
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int index; int name; } ;
typedef TYPE_1__ _element ;
struct TYPE_6__ {unsigned int max_history_size; } ;
typedef int FILE ;


 int __element_sort_func ;
 TYPE_3__ config ;
 int fprintf (int *,char*,int,int ) ;
 int g_qsort_with_data (TYPE_1__**,unsigned int,int,int ,int *) ;

__attribute__((used)) static void __history_write_element_list ( FILE *fd, _element **list, unsigned int length )
{
    if ( list == ((void*)0) || length == 0 ) {
        return;
    }

    g_qsort_with_data ( list, length, sizeof ( _element* ), __element_sort_func, ((void*)0) );


    int min_value = list[length - 1]->index;


    length = ( length > config.max_history_size ) ? config.max_history_size : length;


    for ( unsigned int iter = 0; iter < length; iter++ ) {
        fprintf ( fd, "%ld %s\n", list[iter]->index - min_value, list[iter]->name );
    }
}
