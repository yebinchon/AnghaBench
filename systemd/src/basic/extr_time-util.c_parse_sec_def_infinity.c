
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;


 int USEC_INFINITY ;
 int WHITESPACE ;
 scalar_t__ isempty (char const*) ;
 int parse_sec (char const*,int *) ;
 int strspn (char const*,int ) ;

int parse_sec_def_infinity(const char *t, usec_t *ret) {
        t += strspn(t, WHITESPACE);
        if (isempty(t)) {
                *ret = USEC_INFINITY;
                return 0;
        }
        return parse_sec(t, ret);
}
