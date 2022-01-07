
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* uint8_t ;


 int EINVAL ;
 int ENOMEM ;
 int assert (char* const*) ;
 int free_and_replace (char*,char*) ;
 scalar_t__ memchr (char* const*,int ,size_t) ;
 char* memdup_suffix0 (char const*,size_t) ;
 char* mfree (char*) ;

__attribute__((used)) static int lease_parse_string(const uint8_t *option, size_t len, char **ret) {
        assert(option);
        assert(ret);

        if (len <= 0)
                *ret = mfree(*ret);
        else {
                char *string;





                if (memchr(option, 0, len - 1))
                        return -EINVAL;

                string = memdup_suffix0((const char *) option, len);
                if (!string)
                        return -ENOMEM;

                free_and_replace(*ret, string);
        }

        return 0;
}
