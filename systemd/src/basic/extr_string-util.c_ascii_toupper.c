
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char ascii_toupper(char x) {

        if (x >= 'a' && x <= 'z')
                return x - 'a' + 'A';

        return x;
}
