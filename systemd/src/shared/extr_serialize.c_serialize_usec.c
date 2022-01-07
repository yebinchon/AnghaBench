
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usec_t ;
typedef char const FILE ;


 int USEC_FMT ;
 scalar_t__ USEC_INFINITY ;
 int assert (char const*) ;
 int serialize_item_format (char const*,char const*,int ,scalar_t__) ;

int serialize_usec(FILE *f, const char *key, usec_t usec) {
        assert(f);
        assert(key);

        if (usec == USEC_INFINITY)
                return 0;

        return serialize_item_format(f, key, USEC_FMT, usec);
}
