
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GCD (int,int) ;

__attribute__((used)) static int LCM( int a, int b )
{
    return a * b / GCD( a, b );
}
