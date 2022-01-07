
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int argc_count(char *opts) {
        int i = 0;
        while (*opts != '\0')
                if (*opts++ == ' ')
                        i++;
        return i;
}
