
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;



__attribute__((used)) static inline BYTE hex( BYTE x )
{
    if( x <= 9 )
        return x + '0';
    return x + 'A' - 10;
}
