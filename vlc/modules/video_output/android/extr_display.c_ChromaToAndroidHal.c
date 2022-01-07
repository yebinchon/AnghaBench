
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fourcc_t ;


 int PRIV_WINDOW_FORMAT_YV12 ;





 int WINDOW_FORMAT_RGBA_8888 ;
 int WINDOW_FORMAT_RGBX_8888 ;
 int WINDOW_FORMAT_RGB_565 ;

__attribute__((used)) static inline int ChromaToAndroidHal(vlc_fourcc_t i_chroma)
{
    switch (i_chroma) {
        case 128:
        case 132:
            return PRIV_WINDOW_FORMAT_YV12;
        case 131:
            return WINDOW_FORMAT_RGB_565;
        case 130:
            return WINDOW_FORMAT_RGBX_8888;
        case 129:
            return WINDOW_FORMAT_RGBA_8888;
        default:
            return -1;
    }
}
