
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vlc_fourcc_t ;



 scalar_t__ LookupAudio (scalar_t__,char const**) ;
 scalar_t__ LookupSpu (scalar_t__,char const**) ;
 scalar_t__ LookupVideo (scalar_t__,char const**) ;



__attribute__((used)) static vlc_fourcc_t LookupCat(vlc_fourcc_t fourcc, const char **restrict dsc,
                              int cat)
{
    switch (cat)
    {
        case 128:
            return LookupVideo(fourcc, dsc);
        case 130:
            return LookupAudio(fourcc, dsc);
        case 129:
            return LookupSpu(fourcc, dsc);
    }

    vlc_fourcc_t ret = LookupVideo(fourcc, dsc);
    if (!ret)
        ret = LookupAudio(fourcc, dsc);
    if (!ret)
        ret = LookupSpu(fourcc, dsc);
    return ret;
}
