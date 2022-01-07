
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curchr ;
 int* regparse ;

__attribute__((used)) static int
getdecchrs()
{
    int nr = 0;
    int c;
    int i;

    for (i = 0; ; ++i)
    {
 c = regparse[0];
 if (c < '0' || c > '9')
     break;
 nr *= 10;
 nr += c - '0';
 ++regparse;
 curchr = -1;
    }

    if (i == 0)
 return -1;
    return nr;
}
