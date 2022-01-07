
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fast_chunk ;
struct TYPE_3__ {int * fc; } ;
typedef TYPE_1__ decoded_buffer ;


 TYPE_1__* get_decoded_buffer (int,int) ;

fast_chunk *get_decoded_fastchunk(int chunk_x, int chunk_z)
{
   decoded_buffer *db = get_decoded_buffer(chunk_x, chunk_z);
   return db->fc;
}
