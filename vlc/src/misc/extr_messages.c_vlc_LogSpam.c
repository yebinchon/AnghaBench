
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int CONFIGURE_LINE ;
 int COPYRIGHT_MESSAGE ;
 int VERSION_MESSAGE ;
 int msg_Dbg (int *,char*,int ) ;
 int psz_vlc_changeset ;

__attribute__((used)) static void vlc_LogSpam(vlc_object_t *obj)
{

    msg_Dbg(obj, "VLC media player - %s", VERSION_MESSAGE);
    msg_Dbg(obj, "%s", COPYRIGHT_MESSAGE);
    msg_Dbg(obj, "revision %s", psz_vlc_changeset);
    msg_Dbg(obj, "configured with %s", CONFIGURE_LINE);
}
