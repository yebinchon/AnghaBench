
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VLC_PICTURES_DIR ;
 char* config_GetUserDir (int ) ;

char *vout_snapshot_GetDirectory(void)
{
    return config_GetUserDir(VLC_PICTURES_DIR);
}
