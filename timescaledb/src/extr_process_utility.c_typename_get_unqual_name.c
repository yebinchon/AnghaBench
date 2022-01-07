
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char const* str; } ;
struct TYPE_7__ {TYPE_1__ val; } ;
typedef TYPE_2__ Value ;
struct TYPE_8__ {int names; } ;
typedef TYPE_3__ TypeName ;


 TYPE_2__* llast (int ) ;

__attribute__((used)) static inline const char *
typename_get_unqual_name(TypeName *tn)
{
 Value *name = llast(tn->names);

 return name->val.str;
}
