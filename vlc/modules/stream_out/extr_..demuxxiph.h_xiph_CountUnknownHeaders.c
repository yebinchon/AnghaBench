
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fourcc_t ;


 int xiph_CountHeaders (void const*,unsigned int) ;
 int xiph_CountLavcHeaders (void const*,unsigned int) ;
 scalar_t__ xiph_IsLavcFormat (void const*,unsigned int,int ) ;

__attribute__((used)) static inline unsigned xiph_CountUnknownHeaders(const void *p_extra, unsigned i_extra,
                                                vlc_fourcc_t i_codec)
{
    if (xiph_IsLavcFormat(p_extra, i_extra, i_codec))
        return xiph_CountLavcHeaders(p_extra, i_extra);
    else
        return xiph_CountHeaders(p_extra, i_extra);
}
