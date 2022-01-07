
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef scalar_t__ vlc_fourcc_t ;


 int VIDEO_ES ;
 int free (char*) ;
 int msg_Err (int *,char*,char*) ;
 char* var_InheritString (int *,char const*) ;
 scalar_t__ vlc_fourcc_GetCodecFromString (int ,char*) ;

__attribute__((used)) static vlc_fourcc_t var_InheritFourCC (vlc_object_t *obj, const char *varname)
{
    char *str = var_InheritString (obj, varname);
    if (str == ((void*)0))
        return 0;

    vlc_fourcc_t fourcc = vlc_fourcc_GetCodecFromString (VIDEO_ES, str);
    if (fourcc == 0)
        msg_Err (obj, "invalid codec %s", str);
    free (str);
    return fourcc;
}
