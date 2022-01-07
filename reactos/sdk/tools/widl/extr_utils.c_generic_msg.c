
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_3__ {char* input_name; int line_number; scalar_t__ near_text; } ;
typedef TYPE_1__ loc_info_t ;


 int fprintf (int ,char*,char*,...) ;
 int free (char*) ;
 int make_print (char*) ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;
 scalar_t__ want_near_indication ;
 char* xstrdup (scalar_t__) ;

__attribute__((used)) static void generic_msg(const loc_info_t *loc_info, const char *s, const char *t, va_list ap)
{
 fprintf(stderr, "%s:%d: %s: ", loc_info->input_name, loc_info->line_number, t);
 vfprintf(stderr, s, ap);

 if (want_near_indication)
 {
  char *cpy;
  if(loc_info->near_text)
  {
   cpy = xstrdup(loc_info->near_text);
   make_print(cpy);
   fprintf(stderr, " near '%s'", cpy);
   free(cpy);
  }
 }
}
