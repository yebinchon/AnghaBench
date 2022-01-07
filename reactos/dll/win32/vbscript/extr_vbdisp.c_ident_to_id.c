
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ident_map_t ;
struct TYPE_3__ {int * ident_map; } ;
typedef TYPE_1__ ScriptDisp ;
typedef int DISPID ;



__attribute__((used)) static inline DISPID ident_to_id(ScriptDisp *This, ident_map_t *ident)
{
    return (ident-This->ident_map)+1;
}
