
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;


 int * U ;
 int append8 (int,int ) ;
 int poly ;
 int polymmult (int,int,int ) ;

__attribute__((used)) static void calcU(int size)
{
    int i;
    u_int64_t sizeshift = 1;
    for (i = 1; i < size; i++)
        sizeshift = append8 (sizeshift, 0);
    for (i = 0; i < 256; i++)
        U[i] = polymmult (i, sizeshift, poly);
}
