
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool isurihex(int c)
{
    return ((unsigned char)(c - '0') < 10)
        || ((unsigned char)(c - 'A') < 6)
        || ((unsigned char)(c - 'a') < 6);
}
