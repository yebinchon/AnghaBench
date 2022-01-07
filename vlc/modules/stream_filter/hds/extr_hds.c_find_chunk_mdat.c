
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;


 scalar_t__ U32_AT (int *) ;
 int U64_AT (int *) ;
 scalar_t__ memcmp (int *,char*,int) ;
 int msg_Err (int *,char*) ;

__attribute__((used)) static uint32_t find_chunk_mdat( vlc_object_t* p_this,
                                 uint8_t* chunkdata, uint8_t* chunkdata_end,
                                 uint8_t** mdatptr )
{
    uint8_t* boxname = ((void*)0);
    uint8_t* boxdata = ((void*)0);
    uint64_t boxsize = 0;

    do {
        if( chunkdata_end < chunkdata ||
            chunkdata_end - chunkdata < 8 )
        {
            msg_Err( p_this, "Couldn't find mdat in box 1!" );
            *mdatptr = 0;
            return 0;
        }

        boxsize = (uint64_t)U32_AT( chunkdata );
        chunkdata += 4;

        boxname = chunkdata;
        chunkdata += 4;

        if( boxsize == 1 )
        {
            if( chunkdata_end - chunkdata >= 12 )
            {
                boxsize = U64_AT(chunkdata);
                chunkdata += 8;
            }
            else
            {
                msg_Err( p_this, "Couldn't find mdat in box 2!");
                *mdatptr = 0;
                return 0;
            }
            boxdata = chunkdata;
            chunkdata += (boxsize - 16);
        }
        else
        {
            boxdata = chunkdata;
            chunkdata += (boxsize - 8);
        }
    } while ( 0 != memcmp( boxname, "mdat", 4 ) );

    *mdatptr = boxdata;

    return chunkdata_end - ((uint8_t*)boxdata);
}
