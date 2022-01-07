
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ShowStatus ;


 int EINVAL ;
 scalar_t__ SHOW_STATUS_TEMPORARY ;
 int assert (scalar_t__*) ;
 scalar_t__ show_status_from_string (char const*) ;

int parse_show_status(const char *v, ShowStatus *ret) {
        ShowStatus s;

        assert(ret);

        s = show_status_from_string(v);
        if (s < 0 || s == SHOW_STATUS_TEMPORARY)
                return -EINVAL;

        *ret = s;
        return 0;
}
