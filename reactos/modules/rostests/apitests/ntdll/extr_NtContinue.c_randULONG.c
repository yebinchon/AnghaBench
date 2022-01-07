
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int n ;
typedef int ULONG ;


 int randbytes (int *,int) ;

__attribute__((used)) static ULONG randULONG(void)
{
    ULONG n;
    randbytes(&n, sizeof(n));
    return n;
}
