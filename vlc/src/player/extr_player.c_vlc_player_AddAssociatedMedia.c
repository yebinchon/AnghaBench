
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_address; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int vlc_player_t ;
struct vlc_player_input {int thread; } ;
struct TYPE_6__ {int b_forced; } ;
typedef TYPE_2__ input_item_slave_t ;
typedef enum slave_type { ____Placeholder_slave_type } slave_type ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;



 int INPUT_CONTROL_ADD_SLAVE ;
 int SLAVE_PRIORITY_USER ;



 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int input_ControlPushHelper (int ,int ,TYPE_1__*) ;
 TYPE_2__* input_item_slave_New (char const*,int,int ) ;
 int subtitles_Filter (char const*) ;
 int vlc_gettext (char*) ;
 struct vlc_player_input* vlc_player_get_input_locked (int *) ;
 int vlc_player_osd_Message (int *,char*,int ) ;

int
vlc_player_AddAssociatedMedia(vlc_player_t *player,
                              enum es_format_category_e cat, const char *uri,
                              bool select, bool notify, bool check_ext)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);

    if (!input || !uri)
        return VLC_EGENERIC;

    enum slave_type type;
    switch (cat)
    {
        case 131:
            type = 130;
            break;
        case 128:
            type = 129;
            break;
        default:
            return VLC_EGENERIC;
    }

    if (check_ext && type == 129 && !subtitles_Filter(uri))
        return VLC_EGENERIC;

    input_item_slave_t *slave =
        input_item_slave_New(uri, type, SLAVE_PRIORITY_USER);
    if (!slave)
        return VLC_ENOMEM;
    slave->b_forced = select;

    vlc_value_t val = { .p_address = slave };
    int ret = input_ControlPushHelper(input->thread, INPUT_CONTROL_ADD_SLAVE,
                                      &val);
    if (ret != VLC_SUCCESS)
        return ret;

    if (notify)
    {
        switch( type )
        {
            case 130:
                vlc_player_osd_Message(player, "%s",
                                       vlc_gettext("Audio track added"));
                break;
            case 129:
                vlc_player_osd_Message(player, "%s",
                                       vlc_gettext("Subtitle track added"));
                break;
        }
    }
    return VLC_SUCCESS;
}
