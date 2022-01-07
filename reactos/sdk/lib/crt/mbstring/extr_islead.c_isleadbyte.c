
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _LEADBYTE ;
 int _isctype (int,int ) ;

int isleadbyte(int c)
{
    return _isctype( c, _LEADBYTE );

}
