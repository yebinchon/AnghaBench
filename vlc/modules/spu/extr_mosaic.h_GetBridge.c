
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int bridge_t ;


 int VLC_OBJECT (int ) ;
 int * var_GetAddress (int ,char*) ;
 int vlc_object_instance (int *) ;

__attribute__((used)) static bridge_t *GetBridge( vlc_object_t *p_object )
{
    return var_GetAddress(VLC_OBJECT(vlc_object_instance(p_object)),
                          "mosaic-struct");
}
