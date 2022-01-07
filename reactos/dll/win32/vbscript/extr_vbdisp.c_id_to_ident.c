
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ident_map_t ;
struct TYPE_3__ {scalar_t__ ident_map_cnt; scalar_t__ ident_map; } ;
typedef TYPE_1__ ScriptDisp ;
typedef scalar_t__ DISPID ;



__attribute__((used)) static inline ident_map_t *id_to_ident(ScriptDisp *This, DISPID id)
{
    return 0 < id && id <= This->ident_map_cnt ? This->ident_map+id-1 : ((void*)0);
}
