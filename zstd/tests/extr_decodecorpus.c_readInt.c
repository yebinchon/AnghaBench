
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned readInt(const char** argument)
{
    unsigned val = 0;
    while ((**argument>='0') && (**argument<='9')) {
        val *= 10;
        val += **argument - '0';
        (*argument)++;
    }
    return val;
}
