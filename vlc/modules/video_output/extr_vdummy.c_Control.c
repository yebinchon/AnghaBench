
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_display_t ;
typedef int va_list ;


 int VLC_SUCCESS ;






__attribute__((used)) static int Control(vout_display_t *vd, int query, va_list args)
{
    (void) vd; (void) args;

    switch (query) {
        case 131:
        case 132:
        case 128:
        case 130:
        case 129:
            return VLC_SUCCESS;
    }
    return VLC_SUCCESS;
}
