
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zpi_name; } ;
typedef TYPE_1__ zfs_project_item_t ;
typedef int list_t ;


 int list_insert_tail (int *,TYPE_1__*) ;
 TYPE_1__* safe_malloc (scalar_t__) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
zfs_project_item_alloc(list_t *head, const char *name)
{
 zfs_project_item_t *zpi;

 zpi = safe_malloc(sizeof (zfs_project_item_t) + strlen(name) + 1);
 strcpy(zpi->zpi_name, name);
 list_insert_tail(head, zpi);
}
