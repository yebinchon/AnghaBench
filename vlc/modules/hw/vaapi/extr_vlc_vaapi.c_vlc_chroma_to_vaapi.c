
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VA_FOURCC_NV12 ;
 int VA_FOURCC_P010 ;
 unsigned int VA_RT_FORMAT_YUV420 ;
 unsigned int VA_RT_FORMAT_YUV420_10BPP ;


 int vlc_assert_unreachable () ;

void
vlc_chroma_to_vaapi(int i_vlc_chroma, unsigned *va_rt_format, int *va_fourcc)
{
    switch (i_vlc_chroma)
    {
        case 129:
            *va_rt_format = VA_RT_FORMAT_YUV420;
            *va_fourcc = VA_FOURCC_NV12;
            break;
        case 128:
            *va_rt_format = VA_RT_FORMAT_YUV420_10BPP;
            *va_fourcc = VA_FOURCC_P010;
            break;
        default:
            vlc_assert_unreachable();
    }
}
