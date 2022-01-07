
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vlc_fourcc_t ;


 scalar_t__ LookupCat (scalar_t__,int *,int) ;

vlc_fourcc_t vlc_fourcc_GetCodec(int cat, vlc_fourcc_t fourcc)
{
    vlc_fourcc_t codec = LookupCat(fourcc, ((void*)0), cat);
    return codec ? codec : fourcc;
}
