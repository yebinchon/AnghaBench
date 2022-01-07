
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ arg_uid ;
 scalar_t__ isempty (char const*) ;
 char* strchr (char const*,char) ;
 char* strdup (scalar_t__) ;
 char* strndup (char const*,int) ;

__attribute__((used)) static int parse_machine_uid(const char *spec, const char **machine, char **uid) {



        char *_uid = ((void*)0);
        const char *_machine = ((void*)0);

        if (spec) {
                const char *at;

                at = strchr(spec, '@');
                if (at) {
                        if (at == spec)

                                return -EINVAL;

                        _machine = at + 1;
                        _uid = strndup(spec, at - spec);
                        if (!_uid)
                                return -ENOMEM;
                } else
                        _machine = spec;
        };

        if (arg_uid && !_uid) {
                _uid = strdup(arg_uid);
                if (!_uid)
                        return -ENOMEM;
        }

        *uid = _uid;
        *machine = isempty(_machine) ? ".host" : _machine;
        return 0;
}
