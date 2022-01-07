
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int AUDIO_ES ;
 int SPU_ES ;
 int UNKNOWN_ES ;
 int VIDEO_ES ;
 int msg_Err (int *,char*) ;
 int var_InheritInteger (int *,char*) ;

__attribute__((used)) static inline int GetCategory(vlc_object_t *object)
{
    const int cat = var_InheritInteger(object, "imem-cat");
    switch (cat)
    {
    case 1:
        return AUDIO_ES;
    case 2:
        return VIDEO_ES;
    case 3:
        return SPU_ES;
    default:
        msg_Err(object, "Invalid ES category");

    case 4:
        return UNKNOWN_ES;
    }
}
