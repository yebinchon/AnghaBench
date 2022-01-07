
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 int backspace_chars (int,size_t) ;
 size_t strlen (char const*) ;
 size_t utf8_n_codepoints (char const*) ;

__attribute__((used)) static int backspace_string(int ttyfd, const char *str) {
        assert(str);



        if (ttyfd < 0)
                return 0;

        size_t m = utf8_n_codepoints(str);
        if (m == (size_t) -1)
                m = strlen(str);





        return backspace_chars(ttyfd, m);
}
