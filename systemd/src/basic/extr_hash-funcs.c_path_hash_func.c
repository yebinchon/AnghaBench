
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const siphash ;


 int assert (char const*) ;
 int siphash24_compress (char const*,int,char const*) ;
 size_t strcspn (char const*,char*) ;
 size_t strspn (char const*,char*) ;

void path_hash_func(const char *q, struct siphash *state) {
        size_t n;

        assert(q);
        assert(state);






        n = strspn(q, "/");
        if (n > 0) {
                siphash24_compress(q, 1, state);
                q += n;
        }

        for (;;) {

                n = strcspn(q, "/");
                if (n == 0)
                        break;


                siphash24_compress(q, n, state);
                q += n;


                n = strspn(q, "/");
                if (q[n] == 0)
                        break;


                siphash24_compress(q, 1, state);
                q += n;
        }
}
