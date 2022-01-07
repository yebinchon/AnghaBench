
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int64_t ;


 int INT64_MAX ;
 int INT64_MIN ;
 int UINT64_MAX ;

int lpStringToInt64(const char *s, unsigned long slen, int64_t *value) {
    const char *p = s;
    unsigned long plen = 0;
    int negative = 0;
    uint64_t v;

    if (plen == slen)
        return 0;


    if (slen == 1 && p[0] == '0') {
        if (value != ((void*)0)) *value = 0;
        return 1;
    }

    if (p[0] == '-') {
        negative = 1;
        p++; plen++;


        if (plen == slen)
            return 0;
    }


    if (p[0] >= '1' && p[0] <= '9') {
        v = p[0]-'0';
        p++; plen++;
    } else if (p[0] == '0' && slen == 1) {
        *value = 0;
        return 1;
    } else {
        return 0;
    }

    while (plen < slen && p[0] >= '0' && p[0] <= '9') {
        if (v > (UINT64_MAX / 10))
            return 0;
        v *= 10;

        if (v > (UINT64_MAX - (p[0]-'0')))
            return 0;
        v += p[0]-'0';

        p++; plen++;
    }


    if (plen < slen)
        return 0;

    if (negative) {
        if (v > ((uint64_t)(-(INT64_MIN+1))+1))
            return 0;
        if (value != ((void*)0)) *value = -v;
    } else {
        if (v > INT64_MAX)
            return 0;
        if (value != ((void*)0)) *value = v;
    }
    return 1;
}
