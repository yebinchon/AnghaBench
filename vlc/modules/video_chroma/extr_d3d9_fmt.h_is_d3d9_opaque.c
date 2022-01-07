
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fourcc_t ;





__attribute__((used)) static inline bool is_d3d9_opaque(vlc_fourcc_t chroma)
{
    switch (chroma)
    {
    case 129:
    case 128:
        return 1;
    default:
        return 0;
    }
}
