
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MIN (size_t,size_t) ;
 int assert (char const*) ;
 int memcmp (char const*,char const*,int ) ;
 size_t strcspn (char const*,char*) ;
 int strspn (char const*,char*) ;

int path_compare(const char *a, const char *b) {
        int d;

        assert(a);
        assert(b);




        d = (a[0] == '/') - (b[0] == '/');
        if (d != 0)
                return d;

        for (;;) {
                size_t j, k;

                a += strspn(a, "/");
                b += strspn(b, "/");

                if (*a == 0 && *b == 0)
                        return 0;


                if (*a == 0)
                        return -1;
                if (*b == 0)
                        return 1;

                j = strcspn(a, "/");
                k = strcspn(b, "/");


                d = memcmp(a, b, MIN(j, k));
                if (d != 0)
                        return (d > 0) - (d < 0);


                d = (j > k) - (j < k);
                if (d != 0)
                        return d;

                a += j;
                b += k;
        }
}
