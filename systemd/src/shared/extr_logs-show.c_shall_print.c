
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OutputFlags ;


 int OUTPUT_SHOW_ALL ;
 size_t PRINT_CHAR_THRESHOLD ;
 int assert (char const*) ;
 int utf8_is_printable (char const*,size_t) ;

__attribute__((used)) static bool shall_print(const char *p, size_t l, OutputFlags flags) {
        assert(p);

        if (flags & OUTPUT_SHOW_ALL)
                return 1;

        if (l >= PRINT_CHAR_THRESHOLD)
                return 0;

        if (!utf8_is_printable(p, l))
                return 0;

        return 1;
}
