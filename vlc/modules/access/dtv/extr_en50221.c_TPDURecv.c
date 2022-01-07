
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct pollfd {int events; int revents; int fd; } ;
struct TYPE_3__ {int* pb_tc_has_data; int obj; int fd; } ;
typedef TYPE_1__ cam_t ;


 int CAM_READ_TIMEOUT ;
 int DATA_INDICATOR ;
 int Dump (int,int*,int) ;
 scalar_t__ EINTR ;
 int MAX_TPDU_SIZE ;
 int POLLIN ;
 int T_SB ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ errno ;
 int free (int*) ;
 int msg_Err (int ,char*,...) ;
 int poll (struct pollfd*,int,int ) ;
 int read (int ,int*,int ) ;
 int vlc_strerror_c (scalar_t__) ;
 int* xmalloc (int ) ;

__attribute__((used)) static int TPDURecv( cam_t *p_cam, uint8_t i_slot, uint8_t *pi_tag,
                     uint8_t *p_data, int *pi_size )
{
    uint8_t i_tcid = i_slot + 1;
    int i_size;
    struct pollfd pfd[1];

    pfd[0].fd = p_cam->fd;
    pfd[0].events = POLLIN;

    while( poll(pfd, 1, CAM_READ_TIMEOUT ) == -1 )
        if( errno != EINTR )
        {
            msg_Err( p_cam->obj, "poll error: %s", vlc_strerror_c(errno) );
            return VLC_EGENERIC;
        }

    if ( !(pfd[0].revents & POLLIN) )
    {
        msg_Err( p_cam->obj, "CAM device poll time-out" );
        return VLC_EGENERIC;
    }

    if ( pi_size == ((void*)0) )
    {
        p_data = xmalloc( MAX_TPDU_SIZE );
    }

    for ( ; ; )
    {
        i_size = read( p_cam->fd, p_data, MAX_TPDU_SIZE );

        if ( i_size >= 0 || errno != EINTR )
            break;
    }

    if ( i_size < 5 )
    {
        msg_Err( p_cam->obj, "cannot read from CAM device (%d): %s", i_size,
                 vlc_strerror_c(errno) );
        if( pi_size == ((void*)0) )
            free( p_data );
        return VLC_EGENERIC;
    }

    if ( p_data[1] != i_tcid )
    {
        msg_Err( p_cam->obj, "invalid read from CAM device (%d instead of %d)",
                 p_data[1], i_tcid );
        if( pi_size == ((void*)0) )
            free( p_data );
        return VLC_EGENERIC;
    }

    *pi_tag = p_data[2];
    p_cam->pb_tc_has_data[i_slot] = (i_size >= 4
                                      && p_data[i_size - 4] == T_SB
                                      && p_data[i_size - 3] == 2
                                      && (p_data[i_size - 1] & DATA_INDICATOR))
                                        ? 1 : 0;

    Dump( 0, p_data, i_size );

    if ( pi_size == ((void*)0) )
        free( p_data );
    else
        *pi_size = i_size;

    return VLC_SUCCESS;
}
