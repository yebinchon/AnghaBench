
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UC ;


 size_t* b64base ;

__attribute__((used)) static void b64setup(UC *unbase)
{
    int i;
    for (i = 0; i <= 255; i++) unbase[i] = (UC) 255;
    for (i = 0; i < 64; i++) unbase[b64base[i]] = (UC) i;
    unbase['='] = 0;
}
