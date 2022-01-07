
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optioninfo {scalar_t__ type; int sopt; int lopt; } ;


 int assert (char const* const**) ;
 int opt_do (struct optioninfo const*,int,char const*,char const*) ;
 struct optioninfo* opt_findl (char const*) ;
 struct optioninfo* opt_finds (char const**) ;
 scalar_t__ ot_funcarg ;
 scalar_t__ ot_funcarg2 ;
 int query_do (char const*) ;
 int strncmp (char const*,char*,int) ;
 int usageerr (char*,...) ;

__attribute__((used)) static void process_optarg(const char *arg,
      const char *const **argv_p,
      const char *value) {
  const struct optioninfo *oip;
  const char *arg2;
  int invert;

  if (arg[0] == '-' || arg[0] == '+') {
    if (arg[0] == '-' && arg[1] == '-') {
      if (!strncmp(arg,"--no-",5)) {
 invert= 1;
 oip= opt_findl(arg+5);
      } else {
 invert= 0;
 oip= opt_findl(arg+2);
      }
      if (oip->type == ot_funcarg) {
 arg= argv_p ? *++(*argv_p) : value;
 if (!arg) usageerr("option --%s requires a value argument",oip->lopt);
 arg2= 0;
      } else if (oip->type == ot_funcarg2) {
 assert(argv_p);
 arg= *++(*argv_p);
 arg2= arg ? *++(*argv_p) : 0;
 if (!arg || !arg2)
   usageerr("option --%s requires two more arguments", oip->lopt);
      } else {
 if (value) usageerr("option --%s does not take a value",oip->lopt);
 arg= 0;
 arg2= 0;
      }
      opt_do(oip,invert,arg,arg2);
    } else if (arg[0] == '-' && arg[1] == 0) {
      arg= argv_p ? *++(*argv_p) : value;
      if (!arg) usageerr("option `-' must be followed by a domain");
      query_do(arg);
    } else {
      invert= (arg[0] == '+');
      ++arg;
      while (*arg) {
 oip= opt_finds(&arg);
 if (oip->type == ot_funcarg) {
   if (!*arg) {
     arg= argv_p ? *++(*argv_p) : value;
     if (!arg) usageerr("option -%s requires a value argument",oip->sopt);
   } else {
     if (value) usageerr("two values for option -%s given !",oip->sopt);
   }
   opt_do(oip,invert,arg,0);
   arg= "";
 } else {
   if (value) usageerr("option -%s does not take a value",oip->sopt);
   opt_do(oip,invert,0,0);
 }
      }
    }
  } else {
    query_do(arg);
  }
}
