
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_2__ {char* input; int line_number; int char_number; } ;


 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int isprint (char) ;
 TYPE_1__ pp_status ;
 char* pp_xstrdup (char const*) ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void generic_msg(const char *s, const char *t, const char *n, va_list ap)
{
 fprintf(stderr, "%s:%d:%d: %s: ", pp_status.input ? pp_status.input : "stdin",
                pp_status.line_number, pp_status.char_number, t);
 vfprintf(stderr, s, ap);
 fprintf(stderr, "\n");
}
