
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int demux_mapping ;


 int * bsearch (char const*,int *,size_t,int,int ) ;
 int demux_mapping_cmp ;

__attribute__((used)) static demux_mapping* demux_lookup( char const* key,
                                    demux_mapping* data, size_t size )
{
    return bsearch( key, data, size, sizeof( *data ), demux_mapping_cmp );
}
