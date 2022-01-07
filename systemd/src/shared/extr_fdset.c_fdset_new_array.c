
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FDSet ;


 int ENOMEM ;
 int MAKE_SET (int *) ;
 int assert (int **) ;
 int * fdset_new () ;
 int fdset_put (int *,int const) ;
 int set_free (int ) ;

int fdset_new_array(FDSet **ret, const int *fds, size_t n_fds) {
        size_t i;
        FDSet *s;
        int r;

        assert(ret);

        s = fdset_new();
        if (!s)
                return -ENOMEM;

        for (i = 0; i < n_fds; i++) {

                r = fdset_put(s, fds[i]);
                if (r < 0) {
                        set_free(MAKE_SET(s));
                        return r;
                }
        }

        *ret = s;
        return 0;
}
