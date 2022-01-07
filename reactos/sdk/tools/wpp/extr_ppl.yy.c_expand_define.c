
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* text; } ;
struct TYPE_7__ {scalar_t__ type; char* ident; TYPE_1__ subst; } ;
typedef TYPE_2__ pp_entry_t ;
struct TYPE_8__ {char* input; int line_number; } ;


 int assert (int) ;
 scalar_t__ def_define ;
 int fprintf (int ,char*,int,char*,int,char*,char*) ;
 int macexpstackidx ;
 scalar_t__ pp_flex_debug ;
 TYPE_4__ pp_status ;
 int ppy__scan_string (char*) ;
 int push_buffer (TYPE_2__*,int *,int *,int ) ;
 int stderr ;

__attribute__((used)) static void expand_define(pp_entry_t *ppp)
{
 assert(ppp->type == def_define);

 if(pp_flex_debug)
  fprintf(stderr, "expand_define(%d): %s:%d: '%s' -> '%s'\n",
   macexpstackidx,
   pp_status.input,
   pp_status.line_number,
   ppp->ident,
   ppp->subst.text);
 if(ppp->subst.text && ppp->subst.text[0])
 {
  push_buffer(ppp, ((void*)0), ((void*)0), 0);
  ppy__scan_string(ppp->subst.text);
 }
}
