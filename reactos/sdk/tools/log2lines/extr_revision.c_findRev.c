
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_SET ;
 int fread (unsigned long*,int,int,int *) ;
 int fseek (int *,int,int ) ;

unsigned long
findRev(FILE *finx, int *rev)
{
    unsigned long pos = 0L;

    while (!fseek(finx, (*rev) * sizeof(unsigned long), SEEK_SET))
    {
        fread(&pos, sizeof(long), 1, finx);
        (*rev)--;
        if (pos)
            break;
    }
    return pos;
}
