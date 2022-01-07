
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (int *,char*,int) ;

__attribute__((used)) static void SetFCC( uint8_t *p, char *fcc )
{
    memcpy( p, fcc, 4 );
}
