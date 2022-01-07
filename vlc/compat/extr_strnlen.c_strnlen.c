
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* memchr (char const*,int ,size_t) ;

size_t strnlen (const char *str, size_t max)
{
    const char *end = memchr (str, 0, max);
    return end ? (size_t)(end - str) : max;
}
