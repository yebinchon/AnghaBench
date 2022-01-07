
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 unsigned int abs (int) ;

__attribute__((used)) static inline BOOL match_off_by_n(int a, int b, unsigned int n)
{
    return abs(a - b) <= n;
}
