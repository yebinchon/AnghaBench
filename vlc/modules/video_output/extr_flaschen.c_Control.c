
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_display_t ;
typedef int va_list ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (int ) ;





 int msg_Err (int *,char*) ;

__attribute__((used)) static int Control(vout_display_t *vd, int query, va_list args)
{
    VLC_UNUSED(args);

    switch (query) {
    case 131:
    case 128:
    case 132:
    case 130:
    case 129:
        return VLC_SUCCESS;

    default:
        msg_Err(vd, "Unsupported query in vout display flaschen");
        return VLC_EGENERIC;
    }
}
