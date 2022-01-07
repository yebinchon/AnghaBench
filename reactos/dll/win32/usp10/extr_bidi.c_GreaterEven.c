
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;


 scalar_t__ odd (int) ;

__attribute__((used)) static WORD GreaterEven(int i)
{
    return odd(i) ? i + 1 : i + 2;
}
