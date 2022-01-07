
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libfat_filesystem {int dummy; } ;


 int free (struct libfat_filesystem*) ;
 int libfat_flush (struct libfat_filesystem*) ;

void libfat_close(struct libfat_filesystem *fs)
{
    libfat_flush(fs);
    free(fs);
}
