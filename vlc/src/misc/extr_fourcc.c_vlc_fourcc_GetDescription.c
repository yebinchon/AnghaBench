
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fourcc_t ;


 scalar_t__ LookupCat (int ,char const**,int) ;

const char *vlc_fourcc_GetDescription(int cat, vlc_fourcc_t fourcc)
{
    const char *ret;

    return LookupCat(fourcc, &ret, cat) ? ret : "";
}
