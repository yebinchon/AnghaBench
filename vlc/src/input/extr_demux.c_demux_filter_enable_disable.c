
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_demux_private {int module; } ;
typedef int demux_t ;


 int DEMUX_FILTER_DISABLE ;
 int DEMUX_FILTER_ENABLE ;
 int demux_Control (int *,int ) ;
 int module_get_name (int ,int) ;
 scalar_t__ strcmp (int ,char const*) ;
 struct vlc_demux_private* vlc_stream_Private (int *) ;

__attribute__((used)) static bool demux_filter_enable_disable(demux_t *p_demux,
                                        const char *psz_demux, bool b_enable)
{
    struct vlc_demux_private *priv = vlc_stream_Private(p_demux);

    if ( psz_demux &&
        (strcmp(module_get_name(priv->module, 0), psz_demux) == 0
      || strcmp(module_get_name(priv->module, 1), psz_demux) == 0) )
    {
        demux_Control( p_demux,
                       b_enable ? DEMUX_FILTER_ENABLE : DEMUX_FILTER_DISABLE );
        return 1;
    }
    return 0;
}
