
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * os_sa; } ;
typedef TYPE_1__ objset_t ;
typedef int boolean_t ;



boolean_t
sa_enabled(objset_t *os)
{
 return (os->os_sa == ((void*)0));
}
