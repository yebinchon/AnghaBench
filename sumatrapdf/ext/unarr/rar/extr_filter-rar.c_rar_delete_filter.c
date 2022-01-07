
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RARFilter {struct RARFilter* globaldata; struct RARFilter* next; } ;


 int free (struct RARFilter*) ;

__attribute__((used)) static void rar_delete_filter(struct RARFilter *filter)
{
    while (filter) {
        struct RARFilter *next = filter->next;
        free(filter->globaldata);
        free(filter);
        filter = next;
    }
}
