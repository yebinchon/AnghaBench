
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch_offset_list {int min; scalar_t__ max; scalar_t__ count; int patches; int files; } ;


 int list_init (int *) ;
 struct patch_offset_list* msi_alloc (int) ;

__attribute__((used)) static struct patch_offset_list *patch_offset_list_create( void )
{
    struct patch_offset_list *pos = msi_alloc( sizeof(struct patch_offset_list) );
    list_init( &pos->files );
    list_init( &pos->patches );
    pos->count = pos->max = 0;
    pos->min = 999999;
    return pos;
}
