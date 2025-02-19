
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mid_quote; size_t buf; size_t len; } ;
typedef TYPE_1__ buf_descriptor_t ;


 int assert_zu_eq (size_t,int ,char*) ;
 int assert_zu_gt (size_t,int ,char*) ;
 int malloc_printf (char*,...) ;
 size_t malloc_snprintf (size_t,size_t,char*,char const*) ;
 scalar_t__ print_escaped ;
 scalar_t__ print_raw ;
 int strlen (char const*) ;

__attribute__((used)) static void
forwarding_cb(void *buf_descriptor_v, const char *str) {
 buf_descriptor_t *buf_descriptor = (buf_descriptor_t *)buf_descriptor_v;

 if (print_raw) {
  malloc_printf("%s", str);
 }
 if (print_escaped) {
  const char *it = str;
  while (*it != '\0') {
   if (!buf_descriptor->mid_quote) {
    malloc_printf("\"");
    buf_descriptor->mid_quote = 1;
   }
   switch (*it) {
   case '\\':
    malloc_printf("\\");
    break;
   case '\"':
    malloc_printf("\\\"");
    break;
   case '\t':
    malloc_printf("\\t");
    break;
   case '\n':
    malloc_printf("\\n\"\n");
    buf_descriptor->mid_quote = 0;
    break;
   default:
    malloc_printf("%c", *it);
   }
   it++;
  }
 }

 size_t written = malloc_snprintf(buf_descriptor->buf,
     buf_descriptor->len, "%s", str);
 assert_zu_eq(written, strlen(str), "Buffer overflow!");
 buf_descriptor->buf += written;
 buf_descriptor->len -= written;
 assert_zu_gt(buf_descriptor->len, 0, "Buffer out of space!");
}
