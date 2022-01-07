
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_3__ {char* psz_string; } ;
typedef TYPE_1__ vlc_value_t ;


 int VLC_VAR_ADDCHOICE ;
 int assert (char*) ;
 char* strchr (char*,char) ;
 int var_Change (int *,char const*,int ,TYPE_1__,char const*) ;

__attribute__((used)) static void AddCustomRatios( vout_thread_t *p_vout, const char *psz_var,
                             char *psz_list )
{
    assert( psz_list );

    char *psz_cur = psz_list;
    char *psz_next;
    while( psz_cur && *psz_cur )
    {
        vlc_value_t val;
        psz_next = strchr( psz_cur, ',' );
        if( psz_next )
        {
            *psz_next = '\0';
            psz_next++;
        }
        val.psz_string = psz_cur;
        var_Change( p_vout, psz_var, VLC_VAR_ADDCHOICE, val,
                    (const char *)psz_cur );
        psz_cur = psz_next;
    }
}
