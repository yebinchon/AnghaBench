
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
AcpiUtBoundStringOutput (
    char *String,
    const char *End,
    char c)
{

    if (String < End)
    {
        *String = c;
    }

    ++String;
    return (String);
}
