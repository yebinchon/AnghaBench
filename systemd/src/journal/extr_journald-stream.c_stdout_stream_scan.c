
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* buffer; size_t length; TYPE_1__* server; } ;
struct TYPE_6__ {size_t line_max; } ;
typedef TYPE_2__ StdoutStream ;
typedef int LineBreak ;


 int LINE_BREAK_EOF ;
 int LINE_BREAK_LINE_MAX ;
 int LINE_BREAK_NEWLINE ;
 int LINE_BREAK_NUL ;
 int assert (TYPE_2__*) ;
 char* memchr (char*,char,size_t) ;
 int memmove (char*,char*,size_t) ;
 int stdout_stream_line (TYPE_2__*,char*,int ) ;

__attribute__((used)) static int stdout_stream_scan(StdoutStream *s, bool force_flush) {
        char *p;
        size_t remaining;
        int r;

        assert(s);

        p = s->buffer;
        remaining = s->length;



        for (;;) {
                LineBreak line_break;
                size_t skip;
                char *end1, *end2;

                end1 = memchr(p, '\n', remaining);
                end2 = memchr(p, 0, end1 ? (size_t) (end1 - p) : remaining);

                if (end2) {

                        skip = end2 - p + 1;
                        line_break = LINE_BREAK_NUL;
                } else if (end1) {

                        *end1 = 0;
                        skip = end1 - p + 1;
                        line_break = LINE_BREAK_NEWLINE;
                } else if (remaining >= s->server->line_max) {

                        *(p + s->server->line_max) = 0;
                        skip = remaining;
                        line_break = LINE_BREAK_LINE_MAX;
                } else
                        break;

                r = stdout_stream_line(s, p, line_break);
                if (r < 0)
                        return r;

                remaining -= skip;
                p += skip;
        }

        if (force_flush && remaining > 0) {
                p[remaining] = 0;
                r = stdout_stream_line(s, p, LINE_BREAK_EOF);
                if (r < 0)
                        return r;

                p += remaining;
                remaining = 0;
        }

        if (p > s->buffer) {
                memmove(s->buffer, p, remaining);
                s->length = remaining;
        }

        return 0;
}
