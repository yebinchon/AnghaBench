
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 int memcpy (int *,int const*,int) ;

void ip_copy(IP *target, const IP *source)
{
    if (!source || !target)
        return;

    memcpy(target, source, sizeof(IP));
}
