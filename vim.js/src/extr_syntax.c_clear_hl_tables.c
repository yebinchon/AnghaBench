
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int stop; int start; } ;
struct TYPE_8__ {TYPE_2__ term; } ;
struct TYPE_10__ {TYPE_1__ ae_u; } ;
typedef TYPE_3__ attrentry_T ;
struct TYPE_11__ {int ga_len; scalar_t__ ga_data; } ;


 TYPE_4__ cterm_attr_table ;
 int ga_clear (TYPE_4__*) ;
 TYPE_4__ gui_attr_table ;
 TYPE_4__ term_attr_table ;
 int vim_free (int ) ;

void
clear_hl_tables()
{
    int i;
    attrentry_T *taep;




    for (i = 0; i < term_attr_table.ga_len; ++i)
    {
 taep = &(((attrentry_T *)term_attr_table.ga_data)[i]);
 vim_free(taep->ae_u.term.start);
 vim_free(taep->ae_u.term.stop);
    }
    ga_clear(&term_attr_table);
    ga_clear(&cterm_attr_table);
}
