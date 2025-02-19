
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libfat_sector {struct libfat_sector* next; } ;
struct libfat_filesystem {struct libfat_sector* sectors; } ;


 int _mm_free (struct libfat_sector*) ;

void libfat_flush(struct libfat_filesystem *fs)
{
    struct libfat_sector *ls, *lsnext;

    lsnext = fs->sectors;
    fs->sectors = ((void*)0);

    for (ls = lsnext; ls; ls = lsnext) {
 lsnext = ls->next;
 _mm_free(ls);
    }
}
