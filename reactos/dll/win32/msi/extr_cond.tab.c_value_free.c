
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int string; } ;
struct value {scalar_t__ type; TYPE_1__ u; } ;


 scalar_t__ VALUE_INTEGER ;
 int cond_free (int ) ;

__attribute__((used)) static void value_free( struct value val )
{
    if (val.type != VALUE_INTEGER)
        cond_free( val.u.string );
}
