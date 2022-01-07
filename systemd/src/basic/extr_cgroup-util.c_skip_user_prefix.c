
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 char const* skip_session (char const*) ;
 char* skip_slices (char const*) ;
 char* skip_user_manager (char const*) ;

__attribute__((used)) static const char *skip_user_prefix(const char *path) {
        const char *e, *t;

        assert(path);


        e = skip_slices(path);


        t = skip_user_manager(e);
        if (t)
                return t;


        return skip_session(e);
}
