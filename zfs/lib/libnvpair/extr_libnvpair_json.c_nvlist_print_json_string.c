
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int mbstate_t ;
typedef int mbr ;
typedef int FILE ;


 int FPRINTF (int *,char*,...) ;
 int MB_CUR_MAX ;
 int bzero (int *,int) ;
 size_t mbrtowc (int*,char const*,int ,int *) ;

__attribute__((used)) static int
nvlist_print_json_string(FILE *fp, const char *input)
{
 mbstate_t mbr;
 wchar_t c;
 size_t sz;

 bzero(&mbr, sizeof (mbr));

 FPRINTF(fp, "\"");
 while ((sz = mbrtowc(&c, input, MB_CUR_MAX, &mbr)) > 0) {
  switch (c) {
  case '"':
   FPRINTF(fp, "\\\"");
   break;
  case '\n':
   FPRINTF(fp, "\\n");
   break;
  case '\r':
   FPRINTF(fp, "\\r");
   break;
  case '\\':
   FPRINTF(fp, "\\\\");
   break;
  case '\f':
   FPRINTF(fp, "\\f");
   break;
  case '\t':
   FPRINTF(fp, "\\t");
   break;
  case '\b':
   FPRINTF(fp, "\\b");
   break;
  default:
   if ((c >= 0x00 && c <= 0x1f) ||
       (c > 0x7f && c <= 0xffff)) {





    FPRINTF(fp, "\\u%04x", (int)(0xffff & c));
   } else if (c >= 0x20 && c <= 0x7f) {




    FPRINTF(fp, "%c", (int)(0xff & c));
   }
   break;
  }
  input += sz;
 }

 if (sz == (size_t)-1 || sz == (size_t)-2) {




  return (-1);
 }

 FPRINTF(fp, "\"");
 return (0);
}
