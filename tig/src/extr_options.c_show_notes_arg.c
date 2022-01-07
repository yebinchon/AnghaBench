
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* opt_notes_arg ;
 scalar_t__ opt_show_notes ;

const char *
show_notes_arg()
{
 if (opt_show_notes)
  return opt_notes_arg;

 return "";
}
