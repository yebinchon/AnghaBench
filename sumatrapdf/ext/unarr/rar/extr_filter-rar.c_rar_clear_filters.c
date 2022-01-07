
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar_archive_rar_filters {int vm; int progs; int stack; } ;


 int free (int ) ;
 int rar_delete_filter (int ) ;
 int rar_delete_program (int ) ;

void rar_clear_filters(struct ar_archive_rar_filters *filters)
{
    rar_delete_filter(filters->stack);
    rar_delete_program(filters->progs);
    free(filters->vm);
}
