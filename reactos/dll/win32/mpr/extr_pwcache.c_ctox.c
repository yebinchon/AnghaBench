
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char CHAR ;



__attribute__((used)) static inline signed char ctox( CHAR x )
{
    if( ( x >= '0' ) && ( x <= '9' ) )
        return x - '0';
    if( ( x >= 'A' ) && ( x <= 'F' ) )
        return x - 'A' + 10;
    if( ( x >= 'a' ) && ( x <= 'a' ) )
        return x - 'a' + 10;
    return -1;
}
