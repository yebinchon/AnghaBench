
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ opt_diff_context ;
 int string_format (char*,char*,scalar_t__) ;

const char *
diff_context_arg()
{
 static char opt_diff_context_arg[9] = "";

 if (opt_diff_context < 0 ||
     !string_format(opt_diff_context_arg, "-U%u", opt_diff_context))
  return "";

 return opt_diff_context_arg;
}
