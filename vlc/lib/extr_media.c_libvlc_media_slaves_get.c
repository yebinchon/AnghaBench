
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {TYPE_3__* p_input_item; } ;
typedef TYPE_1__ libvlc_media_t ;
struct TYPE_11__ {char* psz_uri; int i_priority; int i_type; } ;
typedef TYPE_2__ libvlc_media_slave_t ;
struct TYPE_12__ {int i_slaves; int lock; TYPE_4__** pp_slaves; } ;
typedef TYPE_3__ input_item_t ;
struct TYPE_13__ {int i_priority; int i_type; int psz_uri; } ;
typedef TYPE_4__ input_item_slave_t ;
 int assert (int) ;
 TYPE_2__** calloc (int,int) ;
 int libvlc_media_slave_type_audio ;
 int libvlc_media_slave_type_subtitle ;
 int libvlc_media_slaves_release (TYPE_2__**,int) ;
 TYPE_2__* malloc (scalar_t__) ;
 int strcpy (char*,int ) ;
 scalar_t__ strlen (int ) ;
 int vlc_assert_unreachable () ;
 int vlc_mutex_lock (int *) ;
 unsigned int vlc_mutex_unlock (int *) ;

unsigned int libvlc_media_slaves_get( libvlc_media_t *p_md,
                                      libvlc_media_slave_t ***ppp_slaves )
{
    assert( p_md && ppp_slaves );
    input_item_t *p_input_item = p_md->p_input_item;
    *ppp_slaves = ((void*)0);

    vlc_mutex_lock( &p_input_item->lock );

    int i_count = p_input_item->i_slaves;
    if( i_count <= 0 )
        return vlc_mutex_unlock( &p_input_item->lock ), 0;

    libvlc_media_slave_t **pp_slaves = calloc( i_count, sizeof(*pp_slaves) );
    if( pp_slaves == ((void*)0) )
        return vlc_mutex_unlock( &p_input_item->lock ), 0;

    for( int i = 0; i < i_count; ++i )
    {
        input_item_slave_t *p_item_slave = p_input_item->pp_slaves[i];
        assert( p_item_slave->i_priority >= 132 );


        libvlc_media_slave_t *p_slave = malloc( sizeof(*p_slave) +
                                                strlen( p_item_slave->psz_uri )
                                                + 1 );
        if( p_slave == ((void*)0) )
        {
            libvlc_media_slaves_release(pp_slaves, i);
            return vlc_mutex_unlock( &p_input_item->lock ), 0;
        }
        p_slave->psz_uri = (char *) ((uint8_t *)p_slave) + sizeof(*p_slave);
        strcpy( p_slave->psz_uri, p_item_slave->psz_uri );

        switch( p_item_slave->i_type )
        {
        case 128:
            p_slave->i_type = libvlc_media_slave_type_subtitle;
            break;
        case 129:
            p_slave->i_type = libvlc_media_slave_type_audio;
            break;
        default:
            vlc_assert_unreachable();
        }

        switch( p_item_slave->i_priority )
        {
        case 132:
            p_slave->i_priority = 0;
            break;
        case 131:
            p_slave->i_priority = 1;
            break;
        case 133:
            p_slave->i_priority = 2;
            break;
        case 134:
            p_slave->i_priority = 3;
            break;
        case 130:
            p_slave->i_priority = 4;
            break;
        default:
            vlc_assert_unreachable();
        }
        pp_slaves[i] = p_slave;
    }
    vlc_mutex_unlock( &p_input_item->lock );

    *ppp_slaves = pp_slaves;
    return i_count;
}
