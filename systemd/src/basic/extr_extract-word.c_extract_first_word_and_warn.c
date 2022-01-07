
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExtractFlags ;


 int EINVAL ;
 int EXTRACT_CUNESCAPE_RELAX ;
 int LOG_ERR ;
 int LOG_WARNING ;
 int extract_first_word (char const**,char**,char const*,int) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*) ;

int extract_first_word_and_warn(
                const char **p,
                char **ret,
                const char *separators,
                ExtractFlags flags,
                const char *unit,
                const char *filename,
                unsigned line,
                const char *rvalue) {





        const char *save;
        int r;

        save = *p;
        r = extract_first_word(p, ret, separators, flags);
        if (r >= 0)
                return r;

        if (r == -EINVAL && !(flags & EXTRACT_CUNESCAPE_RELAX)) {


                *p = save;
                r = extract_first_word(p, ret, separators, flags|EXTRACT_CUNESCAPE_RELAX);
                if (r >= 0) {

                        log_syntax(unit, LOG_WARNING, filename, line, EINVAL, "Ignoring unknown escape sequences: \"%s\"", *ret);
                        return r;
                }


                if (r == -EINVAL)
                        return log_syntax(unit, LOG_ERR, filename, line, r, "Unbalanced quoting, ignoring: \"%s\"", rvalue);
        }


        return log_syntax(unit, LOG_ERR, filename, line, r, "Unable to decode word \"%s\", ignoring: %m", rvalue);
}
