
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_9__ {unsigned int i_selected_dev; } ;
typedef TYPE_2__ aout_sys_t ;


 int _ (char*) ;
 int asprintf (char**,char*,unsigned int,char*,char*) ;
 int atoi (char const*) ;
 int config_PutPsz (char*,char*) ;
 int free (char*) ;
 int msg_Warn (TYPE_1__*,char*) ;
 char* strdup (char*) ;
 char* strrchr (char*,char) ;
 char* strtok_r (char*,char*,char**) ;
 char* var_CreateGetNonEmptyString (TYPE_1__*,char*) ;
 int var_SetString (TYPE_1__*,char*,char*) ;
 int vlc_dialog_display_error (TYPE_1__*,int ,char*,int ) ;

__attribute__((used)) static void
WarnConfiguration(audio_output_t *p_aout)
{
    aout_sys_t *p_sys = p_aout->sys;
    char *warned_devices = var_CreateGetNonEmptyString(p_aout, "auhal-warned-devices");
    bool dev_is_warned = 0;
    unsigned dev_count = 0;


    if (warned_devices)
    {
        char *dup = strdup(warned_devices);
        if (dup)
        {
            char *savetpr;
            for (const char *dev = strtok_r(dup, ";", &savetpr);
                 dev != ((void*)0) && !dev_is_warned;
                 dev = strtok_r(((void*)0), ";", &savetpr))
            {
                dev_count++;
                int devid = atoi(dev);
                if (devid >= 0 && (unsigned) devid == p_sys->i_selected_dev)
                {
                    dev_is_warned = 1;
                    break;
                }
            }
            free(dup);
        }
    }


    if (!dev_is_warned)
    {
        msg_Warn(p_aout, "You should configure your speaker layout with "
                "Audio Midi Setup in /Applications/Utilities. VLC will "
                "output Stereo only.");
        vlc_dialog_display_error(p_aout,
            _("Audio device is not configured"), "%s",
            _("You should configure your speaker layout with "
            "\"Audio Midi Setup\" in /Applications/"
            "Utilities. VLC will output Stereo only."));


        if (dev_count >= 10)
        {
            char *end = strrchr(warned_devices, ';');
            if (end)
                *end = 0;
        }


        char *new_warned_devices;
        if (asprintf(&new_warned_devices, "%u%s%s", p_sys->i_selected_dev,
                     warned_devices ? ";" : "",
                     warned_devices ? warned_devices : "") != -1)
        {
            config_PutPsz("auhal-warned-devices", new_warned_devices);
            var_SetString(p_aout, "auhal-warned-devices", new_warned_devices);
            free(new_warned_devices);
        }
    }
    free(warned_devices);
}
