
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SplitFlags ;


 int SPLIT_QUOTES ;
 int SPLIT_RELAX ;
 int assert (int) ;
 scalar_t__ strchr (char const*,char const) ;
 size_t strcspn (char const*,char const*) ;
 size_t strcspn_escaped (char const*,char const*) ;
 int strspn (char const*,char const*) ;

const char* split(const char **state, size_t *l, const char *separator, SplitFlags flags) {
        const char *current;

        current = *state;

        if (!*current) {
                assert(**state == '\0');
                return ((void*)0);
        }

        current += strspn(current, separator);
        if (!*current) {
                *state = current;
                return ((void*)0);
        }

        if (flags & SPLIT_QUOTES && strchr("\'\"", *current)) {
                char quotechars[2] = {*current, '\0'};

                *l = strcspn_escaped(current + 1, quotechars);
                if (current[*l + 1] == '\0' || current[*l + 1] != quotechars[0] ||
                    (current[*l + 2] && !strchr(separator, current[*l + 2]))) {

                        if (flags & SPLIT_RELAX) {
                                *state = current + *l + 1 + (current[*l + 1] != '\0');
                                return current + 1;
                        }
                        *state = current;
                        return ((void*)0);
                }
                *state = current++ + *l + 2;
        } else if (flags & SPLIT_QUOTES) {
                *l = strcspn_escaped(current, separator);
                if (current[*l] && !strchr(separator, current[*l]) && !(flags & SPLIT_RELAX)) {

                        *state = current;
                        return ((void*)0);
                }
                *state = current + *l;
        } else {
                *l = strcspn(current, separator);
                *state = current + *l;
        }

        return current;
}
