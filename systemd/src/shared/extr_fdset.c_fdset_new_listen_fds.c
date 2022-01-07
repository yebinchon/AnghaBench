
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FDSet ;


 int ENOMEM ;
 int MAKE_SET (int *) ;
 int SD_LISTEN_FDS_START ;
 int assert (int **) ;
 int * fdset_new () ;
 int fdset_put (int *,int) ;
 int sd_listen_fds (int) ;
 int set_free (int ) ;

int fdset_new_listen_fds(FDSet **_s, bool unset) {
        int n, fd, r;
        FDSet *s;

        assert(_s);



        s = fdset_new();
        if (!s) {
                r = -ENOMEM;
                goto fail;
        }

        n = sd_listen_fds(unset);
        for (fd = SD_LISTEN_FDS_START; fd < SD_LISTEN_FDS_START + n; fd ++) {
                r = fdset_put(s, fd);
                if (r < 0)
                        goto fail;
        }

        *_s = s;
        return 0;

fail:
        if (s)
                set_free(MAKE_SET(s));

        return r;
}
