
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int argument; int append_or_force; int acl_default; int acl_access; } ;
typedef TYPE_1__ Item ;


 int ENOSYS ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (TYPE_1__*) ;
 int log_warning_errno (int,char*,...) ;
 int parse_acl (int ,int *,int *,int) ;

__attribute__((used)) static int parse_acls_from_arg(Item *item) {
        log_warning_errno(SYNTHETIC_ERRNO(ENOSYS), "ACLs are not supported. Ignoring");


        return 0;
}
