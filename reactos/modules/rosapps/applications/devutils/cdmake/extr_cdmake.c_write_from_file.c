
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; scalar_t__ buffer; int sector; int offset; int * file; } ;
typedef int FILE ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ BUFFER_SIZE ;
 int FALSE ;
 int SECTOR_SIZE ;
 int SEEK_SET ;
 int TRUE ;
 TYPE_1__ cd ;
 int flush_buffer () ;
 int fread (scalar_t__,int,int,int *) ;
 int fseek (int *,int ,int ) ;

__attribute__((used)) static BOOL write_from_file(FILE *file, DWORD size)
{
    if (cd.file != ((void*)0))
    {
        int n;

        fseek(file, 0, SEEK_SET);
        while (size > 0)
        {
            n = BUFFER_SIZE - cd.count;
            if ((DWORD)n > size)
                n = size;

            if (fread(cd.buffer + cd.count, n, 1, file) < 1)
                return FALSE;

            cd.count += n;
            if (cd.count == BUFFER_SIZE)
                flush_buffer();
            cd.sector += n / SECTOR_SIZE;
            cd.offset += n % SECTOR_SIZE;
            size -= n;
        }
    }
    else
    {
        cd.sector += size / SECTOR_SIZE;
        cd.offset += size % SECTOR_SIZE;
    }

    return TRUE;
}
