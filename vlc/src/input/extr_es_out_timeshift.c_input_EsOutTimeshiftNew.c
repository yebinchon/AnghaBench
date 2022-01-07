
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
typedef int input_thread_t ;
struct TYPE_6__ {int * cbs; } ;
typedef TYPE_1__ es_out_t ;
struct TYPE_7__ {int b_input_paused; int b_input_paused_source; float input_rate; float input_rate_source; int b_delayed; int i_tmp_size_max; char* psz_tmp_path; TYPE_1__ out; int pp_es; int i_es; int * p_ts; int lock; TYPE_1__* p_out; int * p_input; } ;
typedef TYPE_2__ es_out_sys_t ;
typedef int WCHAR ;
typedef scalar_t__ DWORD ;


 char DIR_SEP_CHAR ;
 void* FromWide (int *) ;
 void* GetTempPath (scalar_t__ const,int *) ;
 int S (int ) ;
 int TAB_INIT (int ,int ) ;
 int __MAX (int const,int) ;
 int * _wgetcwd (int *,int ) ;
 int es_out_timeshift_cbs ;
 int free (int *) ;
 TYPE_2__* malloc (int) ;
 int msg_Dbg (int *,char*,...) ;
 char* strdup (char*) ;
 size_t strlen (char*) ;
 int ts_cmd_add_t ;
 int ts_cmd_control_t ;
 int ts_cmd_del_t ;
 int ts_cmd_send_t ;
 int ts_cmd_t ;
 int var_CreateGetInteger (int *,char*) ;
 char* var_InheritString (int *,char*) ;
 int * vlc_alloc (scalar_t__ const,int) ;
 int vlc_mutex_init_recursive (int *) ;

es_out_t *input_EsOutTimeshiftNew( input_thread_t *p_input, es_out_t *p_next_out, float rate )
{
    es_out_sys_t *p_sys = malloc( sizeof(*p_sys) );
    if( !p_sys )
        return ((void*)0);

    p_sys->out.cbs = &es_out_timeshift_cbs;


    p_sys->b_input_paused = 0;
    p_sys->b_input_paused_source = 0;
    p_sys->p_input = p_input;
    p_sys->input_rate = rate;
    p_sys->input_rate_source = rate;

    p_sys->p_out = p_next_out;
    vlc_mutex_init_recursive( &p_sys->lock );

    p_sys->b_delayed = 0;
    p_sys->p_ts = ((void*)0);

    TAB_INIT( p_sys->i_es, p_sys->pp_es );


    const int i_tmp_size_max = var_CreateGetInteger( p_input, "input-timeshift-granularity" );
    if( i_tmp_size_max < 0 )
        p_sys->i_tmp_size_max = 50*1024*1024;
    else
        p_sys->i_tmp_size_max = __MAX( i_tmp_size_max, 1*1024*1024 );
    msg_Dbg( p_input, "using timeshift granularity of %d MiB",
             (int)p_sys->i_tmp_size_max/(1024*1024) );

    p_sys->psz_tmp_path = var_InheritString( p_input, "input-timeshift-path" );
    if( p_sys->psz_tmp_path != ((void*)0) )
        msg_Dbg( p_input, "using timeshift path: %s", p_sys->psz_tmp_path );
    else
        msg_Dbg( p_input, "using default timeshift path" );
    return &p_sys->out;
}
