
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bistate; } ;
typedef TYPE_1__ RowCompressor ;


 int FreeBulkInsertState (int ) ;

__attribute__((used)) static void
row_compressor_finish(RowCompressor *row_compressor)
{
 FreeBulkInsertState(row_compressor->bistate);
}
