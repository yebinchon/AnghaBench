
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 scalar_t__ strv_fnmatch (char* const*,char const*,int) ;
 scalar_t__ strv_isempty (char* const*) ;

__attribute__((used)) static inline bool strv_fnmatch_or_empty(char* const* patterns, const char *s, int flags) {
        assert(s);
        return strv_isempty(patterns) ||
               strv_fnmatch(patterns, s, flags);
}
