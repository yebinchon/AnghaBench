
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fourcc_t ;
typedef int soxr_datatype_t ;


 int SOXR_FLOAT32_I ;
 int SOXR_FLOAT64_I ;
 int SOXR_INT16_I ;
 int SOXR_INT32_I ;





__attribute__((used)) static bool
SoXR_GetFormat( vlc_fourcc_t i_format, soxr_datatype_t *p_type )
{
    switch( i_format )
    {
        case 130:
            *p_type = SOXR_FLOAT64_I;
            return 1;
        case 131:
            *p_type = SOXR_FLOAT32_I;
            return 1;
        case 128:
            *p_type = SOXR_INT32_I;
            return 1;
        case 129:
            *p_type = SOXR_INT16_I;
            return 1;
        default:
            return 0;
    }
}
