
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static uint64_t tar_parse_number(const char *data, size_t size)
{
    uint64_t value = 0;
    size_t i;

    for (i = 0; i < size; i++) {
        if (data[i] == ' ' || data[i] == '\0')
            continue;
        if (data[i] < '0' || '7' < data[i])
            break;
        value = value * 8 + (data[i] - '0');
    }

    return value;
}
