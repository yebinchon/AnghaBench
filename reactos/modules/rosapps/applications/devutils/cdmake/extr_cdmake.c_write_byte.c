
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t count; scalar_t__ offset; int sector; int * buffer; int * file; } ;
typedef int BYTE ;


 size_t BUFFER_SIZE ;
 scalar_t__ SECTOR_SIZE ;
 TYPE_1__ cd ;
 int flush_buffer () ;

__attribute__((used)) static void write_byte(BYTE x)
{
    if (cd.file != ((void*)0))
    {
        cd.buffer[cd.count] = x;
        if (++cd.count == BUFFER_SIZE)
            flush_buffer();
    }
    if (++cd.offset == SECTOR_SIZE)
    {
        cd.sector++;
        cd.offset = 0;
    }
}
