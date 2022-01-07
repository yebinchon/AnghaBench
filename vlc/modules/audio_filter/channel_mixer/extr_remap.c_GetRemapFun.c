
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * remap_fun_t ;
struct TYPE_3__ {int i_format; } ;
typedef TYPE_1__ audio_format_t ;


 int * RemapAddFL32 ;
 int * RemapAddFL64 ;
 int * RemapAddS16N ;
 int * RemapAddS32N ;
 int * RemapAddU8 ;
 int * RemapCopyFL32 ;
 int * RemapCopyFL64 ;
 int * RemapCopyS16N ;
 int * RemapCopyS32N ;
 int * RemapCopyU8 ;






__attribute__((used)) static inline remap_fun_t GetRemapFun( audio_format_t *p_format, bool b_add )
{
    if( b_add )
    {
        switch( p_format->i_format )
        {
            case 128:
                return RemapAddU8;
            case 130:
                return RemapAddS16N;
            case 129:
                return RemapAddS32N;
            case 132:
                return RemapAddFL32;
            case 131:
                return RemapAddFL64;
        }
    }
    else
    {
        switch( p_format->i_format )
        {
            case 128:
                return RemapCopyU8;
            case 130:
                return RemapCopyS16N;
            case 129:
                return RemapCopyS32N;
            case 132:
                return RemapCopyFL32;
            case 131:
                return RemapCopyFL64;
        }
    }

    return ((void*)0);
}
