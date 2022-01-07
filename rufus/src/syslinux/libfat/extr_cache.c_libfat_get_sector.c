
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libfat_sector {scalar_t__ n; void* data; struct libfat_sector* next; } ;
struct libfat_filesystem {scalar_t__ (* read ) (int ,void*,scalar_t__,scalar_t__) ;struct libfat_sector* sectors; int readptr; } ;
typedef scalar_t__ libfat_sector_t ;


 scalar_t__ LIBFAT_SECTOR_SIZE ;
 int _mm_free (struct libfat_sector*) ;
 struct libfat_sector* _mm_malloc (scalar_t__,int) ;
 int libfat_flush (struct libfat_filesystem*) ;
 scalar_t__ stub1 (int ,void*,scalar_t__,scalar_t__) ;

void *libfat_get_sector(struct libfat_filesystem *fs, libfat_sector_t n)
{
    struct libfat_sector *ls;

    for (ls = fs->sectors; ls; ls = ls->next) {
 if (ls->n == n)
     return ls->data;
    }


    ls = _mm_malloc(sizeof(struct libfat_sector) + LIBFAT_SECTOR_SIZE, 16);
    if (!ls) {
 libfat_flush(fs);
 ls = _mm_malloc(sizeof(struct libfat_sector) + LIBFAT_SECTOR_SIZE, 16);

 if (!ls)
     return ((void*)0);
    }

    if (fs->read(fs->readptr, ls->data, LIBFAT_SECTOR_SIZE, n)
 != LIBFAT_SECTOR_SIZE) {
 _mm_free(ls);
 return ((void*)0);
    }

    ls->n = n;
    ls->next = fs->sectors;
    fs->sectors = ls;

    return ls->data;
}
