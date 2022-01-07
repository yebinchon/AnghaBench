
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gid_t ;
struct TYPE_3__ {int sgid; } ;
typedef TYPE_1__ cred_t ;


 int KGID_TO_SGID (int ) ;

gid_t
crgetsgid(const cred_t *cr)
{
 return (KGID_TO_SGID(cr->sgid));
}
