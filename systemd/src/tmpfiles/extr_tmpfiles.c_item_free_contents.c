
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int acl_default; int acl_access; int xattrs; int argument; int path; } ;
typedef TYPE_1__ Item ;


 int acl_free (int ) ;
 int assert (TYPE_1__*) ;
 int free (int ) ;
 int strv_free (int ) ;

__attribute__((used)) static void item_free_contents(Item *i) {
        assert(i);
        free(i->path);
        free(i->argument);
        strv_free(i->xattrs);





}
