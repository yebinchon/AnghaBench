
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int OutputFlags ;
typedef char const FILE ;


 scalar_t__ IN_SET (char const,char,char) ;
 size_t JSON_THRESHOLD ;
 int OUTPUT_SHOW_ALL ;
 int assert (char const*) ;
 int fprintf (char const*,char*,int) ;
 int fputc (char const,char const*) ;
 int fputs (char*,char const*) ;
 int utf8_is_printable (char const*,size_t) ;

void json_escape(
                FILE *f,
                const char* p,
                size_t l,
                OutputFlags flags) {

        assert(f);
        assert(p);

        if (!(flags & OUTPUT_SHOW_ALL) && l >= JSON_THRESHOLD)
                fputs("null", f);

        else if (!(flags & OUTPUT_SHOW_ALL) && !utf8_is_printable(p, l)) {
                bool not_first = 0;

                fputs("[ ", f);

                while (l > 0) {
                        if (not_first)
                                fprintf(f, ", %u", (uint8_t) *p);
                        else {
                                not_first = 1;
                                fprintf(f, "%u", (uint8_t) *p);
                        }

                        p++;
                        l--;
                }

                fputs(" ]", f);
        } else {
                fputc('"', f);

                while (l > 0) {
                        if (IN_SET(*p, '"', '\\')) {
                                fputc('\\', f);
                                fputc(*p, f);
                        } else if (*p == '\n')
                                fputs("\\n", f);
                        else if ((uint8_t) *p < ' ')
                                fprintf(f, "\\u%04x", (uint8_t) *p);
                        else
                                fputc(*p, f);

                        p++;
                        l--;
                }

                fputc('"', f);
        }
}
