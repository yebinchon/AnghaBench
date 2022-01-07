
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sector; scalar_t__ count; int file; int buffer; } ;


 int SECTOR_SIZE ;
 int TRUE ;
 TYPE_1__ cd ;
 char* edit_with_commas (int,int ) ;
 int error_exit (char*) ;
 int fwrite (int ,scalar_t__,int,int ) ;
 int printf (char*,char*) ;
 scalar_t__ show_progress ;
 int total_sectors ;

__attribute__((used)) static void flush_buffer(void)
{
    if (fwrite(cd.buffer, cd.count, 1, cd.file) < 1)
        error_exit("File write error");
    cd.count = 0;
    if (show_progress)
    {
        printf("\r%s ",
            edit_with_commas((total_sectors - cd.sector) * SECTOR_SIZE, TRUE));
    }
}
