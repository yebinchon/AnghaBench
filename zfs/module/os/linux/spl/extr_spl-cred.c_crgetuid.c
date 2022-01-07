
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
struct TYPE_3__ {int euid; } ;
typedef TYPE_1__ cred_t ;


 int KUID_TO_SUID (int ) ;

uid_t
crgetuid(const cred_t *cr)
{
 return (KUID_TO_SUID(cr->euid));
}
