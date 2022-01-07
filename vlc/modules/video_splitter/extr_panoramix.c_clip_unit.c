
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline float clip_unit( float f )
{
    return f < 0.0 ? 0.0 : ( f > 1.0 ? 1.0 : f );
}
