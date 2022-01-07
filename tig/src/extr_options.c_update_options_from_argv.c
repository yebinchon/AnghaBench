
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SUCCESS ;
 int commit_order_arg_map ;
 int ignore_space_arg_map ;
 scalar_t__ map_enum (int*,int ,char const*) ;
 int mark_option_seen (int*) ;
 int opt_commit_order ;
 int opt_diff_context ;
 int opt_ignore_space ;
 int opt_notes_arg ;
 int opt_show_notes ;
 scalar_t__ parse_int (int*,char const*,int ,int) ;
 int prefixcmp (char const*,char*) ;
 int strcmp (char const*,char*) ;
 int string_ncopy (int ,char const*,int ) ;
 int strlen (char const*) ;

void
update_options_from_argv(const char *argv[])
{
 int next, flags_pos;

 for (next = flags_pos = 0; argv[next]; next++) {
  const char *flag = argv[next];
  int value = -1;

  if (map_enum(&value, commit_order_arg_map, flag)) {
   opt_commit_order = value;
   mark_option_seen(&opt_commit_order);
   continue;
  }

  if (map_enum(&value, ignore_space_arg_map, flag)) {
   opt_ignore_space = value;
   mark_option_seen(&opt_ignore_space);
   continue;
  }

  if (!strcmp(flag, "--no-notes")) {
   opt_show_notes = 0;
   mark_option_seen(&opt_show_notes);
   continue;
  }

  if (!prefixcmp(flag, "--show-notes") ||
      !prefixcmp(flag, "--notes")) {
   opt_show_notes = 1;
   string_ncopy(opt_notes_arg, flag, strlen(flag));
   mark_option_seen(&opt_show_notes);
   continue;
  }

  if (!prefixcmp(flag, "-U")
      && parse_int(&value, flag + 2, 0, 999999) == SUCCESS) {
   opt_diff_context = value;
   mark_option_seen(&opt_diff_context);
   continue;
  }

  argv[flags_pos++] = flag;
 }

 argv[flags_pos] = ((void*)0);
}
