
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int EXTRACT_RETAIN_ESCAPE ;
 int EXTRACT_UNQUOTE ;
 int LOG_ERR ;
 int assert (void*) ;
 int extract_first_word (char const**,char**,int *,int) ;
 scalar_t__ isempty (char const*) ;
 int log_oom () ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*) ;
 int strv_consume (char***,char*) ;
 char** strv_free (char**) ;

int config_parse_strv(
                const char *unit,
                const char *filename,
                unsigned line,
                const char *section,
                unsigned section_line,
                const char *lvalue,
                int ltype,
                const char *rvalue,
                void *data,
                void *userdata) {

        char ***sv = data;
        int r;

        assert(filename);
        assert(lvalue);
        assert(rvalue);
        assert(data);

        if (isempty(rvalue)) {
                *sv = strv_free(*sv);
                return 0;
        }

        for (;;) {
                char *word = ((void*)0);

                r = extract_first_word(&rvalue, &word, ((void*)0), EXTRACT_UNQUOTE|EXTRACT_RETAIN_ESCAPE);
                if (r == 0)
                        break;
                if (r == -ENOMEM)
                        return log_oom();
                if (r < 0) {
                        log_syntax(unit, LOG_ERR, filename, line, r, "Invalid syntax, ignoring: %s", rvalue);
                        break;
                }

                r = strv_consume(sv, word);
                if (r < 0)
                        return log_oom();
        }

        return 0;
}
