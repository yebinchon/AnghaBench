
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
typedef int U32 ;


 int XXH32 (int*,int,int ) ;
 int time (int *) ;

__attribute__((used)) static U32 makeSeed(void)
{
    U32 t = (U32) time(((void*)0));
    return XXH32(&t, sizeof(t), 0) % 65536;
}
