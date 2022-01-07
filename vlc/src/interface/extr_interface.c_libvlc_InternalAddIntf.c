
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_int_t ;


 int VLC_SUCCESS ;
 int _ (char*) ;
 int free (char*) ;
 int intf_Create (int *,char const*) ;
 int msg_Err (int *,char*,char const*) ;
 int msg_Info (int *,int ) ;
 int var_InheritBool (int *,char*) ;
 char* var_InheritString (int *,char*) ;

int libvlc_InternalAddIntf(libvlc_int_t *libvlc, const char *name)
{
    int ret;

    if (name != ((void*)0))
        ret = intf_Create(libvlc, name);
    else
    {
        char *intf = var_InheritString(libvlc, "intf");
        if (intf == ((void*)0))
        {

            if (!var_InheritBool(libvlc, "daemon"))

                msg_Info(libvlc, _("Running vlc with the default interface. "
                         "Use 'cvlc' to use vlc without interface."));
        }
        ret = intf_Create(libvlc, intf);
        free(intf);
        name = "default";
    }
    if (ret != VLC_SUCCESS)
        msg_Err(libvlc, "interface \"%s\" initialization failed", name);
    return ret;
}
