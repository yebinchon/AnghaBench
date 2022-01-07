
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_12__ {int i_cc; int i_pid; } ;
typedef TYPE_1__ ts_pid_t ;
struct TYPE_13__ {int i_last_pid; size_t i_all; size_t i_all_alloc; TYPE_1__* p_last; TYPE_1__** pp_all; TYPE_1__ dummy; TYPE_1__ base_si; TYPE_1__ pat; } ;
typedef TYPE_2__ ts_pid_list_t ;
struct searchkey {int i_pid; TYPE_1__** pp_last; } ;


 int PID_ALLOC_CHUNK ;
 int abort () ;
 TYPE_1__** bsearch (struct searchkey*,TYPE_1__**,size_t,int,int ) ;
 TYPE_1__* calloc (int,int) ;
 int memmove (TYPE_1__**,TYPE_1__**,size_t) ;
 TYPE_1__** realloc (TYPE_1__**,int) ;
 int ts_bsearch_searchkey_Compare ;

ts_pid_t * ts_pid_Get( ts_pid_list_t *p_list, uint16_t i_pid )
{
    switch( i_pid )
    {
        case 0:
            return &p_list->pat;
        case 0x1FFB:
            return &p_list->base_si;
        case 0x1FFF:
            return &p_list->dummy;
        default:
            if( p_list->i_last_pid == i_pid )
                return p_list->p_last;
        break;
    }

    size_t i_index = 0;
    ts_pid_t *p_pid = ((void*)0);

    if( p_list->pp_all )
    {
        struct searchkey pidkey;
        pidkey.i_pid = i_pid;
        pidkey.pp_last = ((void*)0);

        ts_pid_t **pp_pidk = bsearch( &pidkey, p_list->pp_all, p_list->i_all,
                                      sizeof(ts_pid_t *), ts_bsearch_searchkey_Compare );
        if ( pp_pidk )
            p_pid = *pp_pidk;
        else
            i_index = (pidkey.pp_last - p_list->pp_all);
    }

    if( p_pid == ((void*)0) )
    {
        if( p_list->i_all >= p_list->i_all_alloc )
        {
            ts_pid_t **p_realloc = realloc( p_list->pp_all,
                                            (p_list->i_all_alloc + PID_ALLOC_CHUNK) * sizeof(ts_pid_t *) );
            if( !p_realloc )
            {
                abort();

            }
            p_list->pp_all = p_realloc;
            p_list->i_all_alloc += PID_ALLOC_CHUNK;
        }

        p_pid = calloc( 1, sizeof(*p_pid) );
        if( !p_pid )
        {
            abort();

        }

        p_pid->i_cc = 0xff;
        p_pid->i_pid = i_pid;


        if( p_list->i_all )
        {
            if( p_list->pp_all[i_index]->i_pid < i_pid )
                i_index++;

            memmove( &p_list->pp_all[i_index + 1],
                    &p_list->pp_all[i_index],
                    (p_list->i_all - i_index) * sizeof(ts_pid_t *) );
        }

        p_list->pp_all[i_index] = p_pid;
        p_list->i_all++;

    }

    p_list->p_last = p_pid;
    p_list->i_last_pid = i_pid;

    return p_pid;
}
