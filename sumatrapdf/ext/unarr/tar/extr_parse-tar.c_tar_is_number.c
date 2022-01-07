
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool tar_is_number(const char *data, size_t size)
{
    size_t i;

    for (i = 0; i < size; i++) {
        if ((data[i] < '0' || '7' < data[i]) && data[i] != ' ' && data[i] != '\0')
            return 0;
    }

    return 1;
}
