
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonVariant ;
typedef int JsonFormatFlags ;
typedef int FILE ;


 int JSON_FORMAT_COLOR ;
 int JSON_FORMAT_COLOR_AUTO ;
 int JSON_FORMAT_NEWLINE ;
 int JSON_FORMAT_PRETTY ;
 int JSON_FORMAT_SEQ ;
 int JSON_FORMAT_SSE ;
 scalar_t__ colors_enabled () ;
 int fputc (char,int *) ;
 int fputs (char*,int *) ;
 int json_format (int *,int *,int,char const*) ;
 int print_source (int *,int *,int,int) ;
 int * stdout ;

void json_variant_dump(JsonVariant *v, JsonFormatFlags flags, FILE *f, const char *prefix) {
        if (!v)
                return;

        if (!f)
                f = stdout;

        print_source(f, v, flags, 0);

        if (((flags & (JSON_FORMAT_COLOR_AUTO|JSON_FORMAT_COLOR)) == JSON_FORMAT_COLOR_AUTO) && colors_enabled())
                flags |= JSON_FORMAT_COLOR;

        if (flags & JSON_FORMAT_SSE)
                fputs("data: ", f);
        if (flags & JSON_FORMAT_SEQ)
                fputc('\x1e', f);

        json_format(f, v, flags, prefix);

        if (flags & (JSON_FORMAT_PRETTY|JSON_FORMAT_SEQ|JSON_FORMAT_SSE|JSON_FORMAT_NEWLINE))
                fputc('\n', f);
        if (flags & JSON_FORMAT_SSE)
                fputc('\n', f);
}
