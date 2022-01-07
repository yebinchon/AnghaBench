
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned long PERSONALITY_INVALID ;
 int assert (unsigned long*) ;
 unsigned long personality_from_string (char const*) ;

__attribute__((used)) static int parse_personality(const char *s, unsigned long *p) {
        unsigned long v;

        assert(p);

        v = personality_from_string(s);
        if (v == PERSONALITY_INVALID)
                return -EINVAL;

        *p = v;
        return 0;
}
