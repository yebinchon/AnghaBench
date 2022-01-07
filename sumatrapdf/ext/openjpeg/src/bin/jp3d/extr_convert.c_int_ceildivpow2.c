
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int int_ceildivpow2(int a, int b)
{
    return (a + (1 << b) - 1) >> b;
}
