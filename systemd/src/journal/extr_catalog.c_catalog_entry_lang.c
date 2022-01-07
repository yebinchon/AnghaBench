
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOMEM ;
 int SYNTHETIC_ERRNO (int ) ;
 int log_error_errno (int ,char*,char const*,unsigned int) ;
 int log_warning (char*,char const*,unsigned int) ;
 char* strdup (char const*) ;
 scalar_t__ streq (char const*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int catalog_entry_lang(
                const char* filename,
                unsigned line,
                const char* t,
                const char* deflang,
                char **ret) {

        size_t c;
        char *z;

        c = strlen(t);
        if (c < 2)
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                       "[%s:%u] Language too short.", filename, line);
        if (c > 31)
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                       "[%s:%u] language too long.", filename, line);

        if (deflang) {
                if (streq(t, deflang)) {
                        log_warning("[%s:%u] language specified unnecessarily", filename, line);
                        return 0;
                }

                log_warning("[%s:%u] language differs from default for file", filename, line);
        }

        z = strdup(t);
        if (!z)
                return -ENOMEM;

        *ret = z;
        return 0;
}
