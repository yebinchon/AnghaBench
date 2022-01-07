
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * regprog; } ;
struct TYPE_4__ {TYPE_1__ rm; } ;


 TYPE_2__ search_hl ;
 int vim_regfree (int *) ;

__attribute__((used)) static void
end_search_hl()
{
    if (search_hl.rm.regprog != ((void*)0))
    {
 vim_regfree(search_hl.rm.regprog);
 search_hl.rm.regprog = ((void*)0);
    }
}
