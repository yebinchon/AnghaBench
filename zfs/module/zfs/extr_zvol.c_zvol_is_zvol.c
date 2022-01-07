
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_2__ {int (* zv_is_zvol ) (char const*) ;} ;


 TYPE_1__* ops ;
 int stub1 (char const*) ;

boolean_t
zvol_is_zvol(const char *name)
{

 return (ops->zv_is_zvol(name));
}
