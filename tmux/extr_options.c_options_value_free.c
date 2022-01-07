
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union options_value {int * cmdlist; int string; } ;
struct options_entry {int dummy; } ;


 scalar_t__ OPTIONS_IS_COMMAND (struct options_entry*) ;
 scalar_t__ OPTIONS_IS_STRING (struct options_entry*) ;
 int cmd_list_free (int *) ;
 int free (int ) ;

__attribute__((used)) static void
options_value_free(struct options_entry *o, union options_value *ov)
{
 if (OPTIONS_IS_STRING(o))
  free(ov->string);
 if (OPTIONS_IS_COMMAND(o) && ov->cmdlist != ((void*)0))
  cmd_list_free(ov->cmdlist);
}
