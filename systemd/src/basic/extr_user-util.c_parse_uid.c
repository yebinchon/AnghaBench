
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uid_t ;


 int ENXIO ;
 int assert (char const*) ;
 int assert_cc (int) ;
 int safe_atou32 (char const*,int *) ;
 int uid_is_valid (int ) ;

int parse_uid(const char *s, uid_t *ret) {
        uint32_t uid = 0;
        int r;

        assert(s);

        assert_cc(sizeof(uid_t) == sizeof(uint32_t));
        r = safe_atou32(s, &uid);
        if (r < 0)
                return r;

        if (!uid_is_valid(uid))
                return -ENXIO;




        if (ret)
                *ret = uid;

        return 0;
}
