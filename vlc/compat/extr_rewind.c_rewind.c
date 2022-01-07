
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_SET ;
 int clearerr (int *) ;
 int fseek (int *,long,int ) ;

void rewind (FILE *stream)
{
    fseek (stream, 0L, SEEK_SET);
    clearerr (stream);
}
