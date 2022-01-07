
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int names_flags ;


 int NAMES_FIRST_PART ;
 int NAMES_PRESENT ;
 int NAMES_SINGLE_PART ;
 int member_name_is_valid (char const*) ;
 int signature_element_length (char const*,size_t*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static bool names_are_valid(const char *signature, const char **names, names_flags *flags) {
        int r;

        if ((*flags & NAMES_FIRST_PART || *flags & NAMES_SINGLE_PART) && **names != '\0')
                *flags |= NAMES_PRESENT;

        for (;*flags & NAMES_PRESENT;) {
                size_t l;

                if (!*signature)
                        break;

                r = signature_element_length(signature, &l);
                if (r < 0)
                        return 0;

                if (**names != '\0') {
                        if (!member_name_is_valid(*names))
                                return 0;
                        *names += strlen(*names) + 1;
                } else if (*flags & NAMES_PRESENT)
                        return 0;

                signature += l;
        }

        if (*flags & NAMES_PRESENT && **names != '\0' && !(*flags & NAMES_FIRST_PART))
                return 0;
        *flags &= ~NAMES_FIRST_PART;
        return 1;
}
