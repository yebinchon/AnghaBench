
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

int unbase32hexchar(char c) {
        unsigned offset;

        if (c >= '0' && c <= '9')
                return c - '0';

        offset = '9' - '0' + 1;

        if (c >= 'A' && c <= 'V')
                return c - 'A' + offset;

        return -EINVAL;
}
