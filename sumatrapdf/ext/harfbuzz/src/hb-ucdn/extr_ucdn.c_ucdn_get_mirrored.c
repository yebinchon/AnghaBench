
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ ucdn_mirror (scalar_t__) ;

int ucdn_get_mirrored(uint32_t code)
{
    return ucdn_mirror(code) != code;
}
