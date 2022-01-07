
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int stream_t ;
typedef int rom1394_directory ;
typedef int * raw1394handle_t ;


 int AVC1394_SUBUNIT_TYPE_VCR ;
 scalar_t__ ROM1394_NODE_TYPE_AVC ;
 int Raw1394Close (int *) ;
 int Raw1394GetNumPorts (int *) ;
 int * Raw1394Open (int *,int) ;
 scalar_t__ avc1394_check_subunit_type (int *,int,int ) ;
 int msg_Err (int *,char*,int) ;
 int raw1394_get_nodecount (int *) ;
 scalar_t__ rom1394_get_directory (int *,int,int *) ;
 scalar_t__ rom1394_get_guid (int *,int) ;
 scalar_t__ rom1394_get_node_type (int *) ;

__attribute__((used)) static int DiscoverAVC( stream_t *p_access, int* port, uint64_t guid )
{
    rom1394_directory rom_dir;
    raw1394handle_t handle = ((void*)0);
    int device = -1;
    int i, j = 0;
    int m = Raw1394GetNumPorts( p_access );

    if( *port >= 0 )
    {

        j = *port;
        m = *port + 1;
    }

    for( ; j < m && device == -1; j++ )
    {
        handle = Raw1394Open( p_access, j );
        if( !handle )
            return -1;

        for( i = 0; i < raw1394_get_nodecount( handle ); ++i )
        {
            if( guid != 0 )
            {

                if( guid == rom1394_get_guid( handle, i ) )
                {
                    device = i;
                    *port = j;
                    break;
                }
            }
            else
            {

                if( rom1394_get_directory( handle, i, &rom_dir ) < 0 )
                {
                    msg_Err( p_access, "error reading config rom directory for node %d", i );
                    continue;
                }
                if( ( rom1394_get_node_type( &rom_dir ) == ROM1394_NODE_TYPE_AVC ) &&
                        avc1394_check_subunit_type( handle, i, AVC1394_SUBUNIT_TYPE_VCR ) )
                {
                    device = i;
                    *port = j;
                    break;
                }
            }
        }
        Raw1394Close( handle );
    }

    return device;
}
