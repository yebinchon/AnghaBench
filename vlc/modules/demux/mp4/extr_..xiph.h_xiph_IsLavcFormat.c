
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fourcc_t ;


 int GetWBE (void const*) ;



__attribute__((used)) static inline bool xiph_IsLavcFormat(const void *extra, unsigned i_extra,
                                     vlc_fourcc_t i_codec)
{
    switch(i_codec)
    {
        case 128:
            return i_extra >= 6 && GetWBE(extra) == 30;
        case 129:
            return i_extra >= 6 && GetWBE(extra) == 42;
        default:
            return 0;
    }
}
