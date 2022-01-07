
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_deleg_who_type_t ;
struct TYPE_3__ {char const* dp_name; int dp_who_type; } ;
typedef TYPE_1__ deleg_perm_t ;



__attribute__((used)) static inline void
deleg_perm_init(deleg_perm_t *deleg_perm, zfs_deleg_who_type_t type,
    const char *name)
{
 deleg_perm->dp_who_type = type;
 deleg_perm->dp_name = name;
}
