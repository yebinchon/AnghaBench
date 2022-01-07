
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rows; int startup_cost; int total_cost; } ;
typedef TYPE_1__ Path ;


 int DECOMPRESS_CHUNK_BATCH_SIZE ;
 int DECOMPRESS_CHUNK_CPU_TUPLE_COST ;

__attribute__((used)) static void
cost_decompress_chunk(Path *path, Path *compressed_path)
{

 if (compressed_path->rows > 0)
  path->startup_cost = compressed_path->total_cost / compressed_path->rows;


 path->total_cost = compressed_path->total_cost + path->rows * DECOMPRESS_CHUNK_CPU_TUPLE_COST;
 path->rows = compressed_path->rows * DECOMPRESS_CHUNK_BATCH_SIZE;
}
