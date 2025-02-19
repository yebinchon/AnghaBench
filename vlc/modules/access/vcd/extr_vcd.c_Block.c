
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {TYPE_1__* p_sectors; int i_tracks; } ;
typedef TYPE_3__ vcddev_toc_t ;
struct TYPE_17__ {TYPE_6__* p_sys; } ;
typedef TYPE_4__ stream_t ;
struct TYPE_18__ {scalar_t__ i_buffer; int p_buffer; } ;
typedef TYPE_5__ block_t ;
struct TYPE_19__ {int i_sector; int i_current_title; int i_current_seekpoint; scalar_t__ offset; TYPE_2__* titles; int vcddev; TYPE_3__* p_toc; } ;
typedef TYPE_6__ access_sys_t ;
struct TYPE_15__ {scalar_t__ count; scalar_t__* seekpoints; } ;
struct TYPE_14__ {int i_lba; } ;


 int USABLE_TITLES (int ) ;
 int VCD_BLOCKS_ONCE ;
 int VCD_DATA_SIZE ;
 int VCD_TYPE ;
 int VLC_OBJECT (TYPE_4__*) ;
 TYPE_5__* block_Alloc (int) ;
 int block_Release (TYPE_5__*) ;
 scalar_t__ ioctl_ReadSectors (int ,int ,int,int ,int,int ) ;
 int msg_Dbg (TYPE_4__*,char*) ;
 int msg_Err (TYPE_4__*,char*,int) ;

__attribute__((used)) static block_t *Block( stream_t *p_access, bool *restrict eof )
{
    access_sys_t *p_sys = p_access->p_sys;
    const vcddev_toc_t *p_toc = p_sys->p_toc;
    int i_blocks = VCD_BLOCKS_ONCE;
    block_t *p_block;


    while( p_sys->i_sector >= p_toc->p_sectors[p_sys->i_current_title + 2].i_lba )
    {
        if( p_sys->i_current_title + 2 >= USABLE_TITLES(p_toc->i_tracks) )
        {
            *eof = 1;
            return ((void*)0);
        }

        p_sys->i_current_title++;
        p_sys->i_current_seekpoint = 0;
        p_sys->offset = 0;
    }


    if( p_sys->i_sector + i_blocks >=
        p_toc->p_sectors[p_sys->i_current_title + 2].i_lba )
    {
        i_blocks = p_toc->p_sectors[p_sys->i_current_title + 2 ].i_lba - p_sys->i_sector;
    }


    if( i_blocks < 0 || !( p_block = block_Alloc( i_blocks * VCD_DATA_SIZE ) ) )
    {
        msg_Err( p_access, "cannot get a new block of size: %i",
                 i_blocks * VCD_DATA_SIZE );
        return ((void*)0);
    }

    if( ioctl_ReadSectors( VLC_OBJECT(p_access), p_sys->vcddev,
            p_sys->i_sector, p_block->p_buffer, i_blocks, VCD_TYPE ) < 0 )
    {
        msg_Err( p_access, "cannot read sector %i", p_sys->i_sector );
        block_Release( p_block );


        p_sys->offset += VCD_DATA_SIZE;
        p_sys->i_sector++;
        return ((void*)0);
    }


    for( int i_read = 0; i_read < i_blocks; i_read++ )
    {
        int i_title = p_sys->i_current_title;

        if( p_sys->titles[i_title].count > 0 &&
            p_sys->i_current_seekpoint + 1 < p_sys->titles[i_title].count &&
                (p_sys->offset + i_read * VCD_DATA_SIZE) >=
            p_sys->titles[i_title].seekpoints[p_sys->i_current_seekpoint + 1] )
        {
            msg_Dbg( p_access, "seekpoint change" );
            p_sys->i_current_seekpoint++;
        }
    }


    p_sys->offset += p_block->i_buffer;
    p_sys->i_sector += i_blocks;

    return p_block;
}
