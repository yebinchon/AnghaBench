
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cudaVideoSurfaceFormat ;
 int cudaVideoSurfaceFormat_NV12 ;
 int cudaVideoSurfaceFormat_P016 ;
 int vlc_assert_unreachable () ;

__attribute__((used)) static cudaVideoSurfaceFormat MapSurfaceFmt(int i_vlc_fourcc)
{
    switch (i_vlc_fourcc) {
        case 131:
        case 130:
        case 129:
        case 128:
            return cudaVideoSurfaceFormat_P016;
        case 132:
        case 133:
            return cudaVideoSurfaceFormat_NV12;




        default: vlc_assert_unreachable();
    }
}
