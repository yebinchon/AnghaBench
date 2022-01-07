
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const Set ;
typedef int ExtractFlags ;


 int assert (char const*) ;
 int extract_first_word (char const**,char**,char const*,int ) ;
 int set_consume (char const*,char*) ;

int set_put_strsplit(Set *s, const char *v, const char *separators, ExtractFlags flags) {
        const char *p = v;
        int r;

        assert(s);
        assert(v);

        for (;;) {
                char *word;

                r = extract_first_word(&p, &word, separators, flags);
                if (r <= 0)
                        return r;

                r = set_consume(s, word);
                if (r < 0)
                        return r;
        }
}
