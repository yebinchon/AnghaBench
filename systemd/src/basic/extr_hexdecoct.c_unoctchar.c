
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

int unoctchar(char c) {

        if (c >= '0' && c <= '7')
                return c - '0';

        return -EINVAL;
}
