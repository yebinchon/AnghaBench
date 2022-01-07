
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint_fast64_t ;
typedef scalar_t__ uint_fast32_t ;
typedef int stream_t ;
typedef int ssize_t ;
struct TYPE_5__ {scalar_t__ i_buffer; } ;
typedef TYPE_1__ block_t ;


 unsigned int MAX_TAGS ;
 scalar_t__ MAX_TAG_SIZE ;
 int block_ChainRelease (TYPE_1__*) ;
 int msg_Err (int *,char*) ;
 scalar_t__ unlikely (int) ;
 TYPE_1__* vlc_stream_Block (int *,scalar_t__) ;
 int vlc_stream_Read (int *,int *,scalar_t__) ;
 scalar_t__ vlc_stream_Seek (int *,int ) ;
 int vlc_stream_Tell (int *) ;

__attribute__((used)) static bool SkipTag(stream_t *s, uint_fast32_t (*skipper)(stream_t *),
                    block_t **pp_block, unsigned *pi_tags_count)
{
    uint_fast64_t offset = vlc_stream_Tell(s);
    uint_fast32_t size = skipper(s);
    if(size> 0)
    {

        ssize_t read;
        if(*pi_tags_count < MAX_TAGS && size <= MAX_TAG_SIZE)
        {
            *pp_block = vlc_stream_Block(s, size);
            read = *pp_block ? (ssize_t)(*pp_block)->i_buffer : -1;
        }
        else
        {
            read = vlc_stream_Read(s, ((void*)0), size);
        }

        if(read < (ssize_t)size)
        {
            block_ChainRelease(*pp_block);
            *pp_block = ((void*)0);
            if (unlikely(read < 0))
            {
                if (vlc_stream_Seek(s, offset))
                    msg_Err(s, "seek failure");
                return 0;
            }
        }
        else (*pi_tags_count)++;
    }
    return size != 0;
}
