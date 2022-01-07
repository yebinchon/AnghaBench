
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int BOOL ;



__attribute__((used)) static BOOL is_power_of_two(ULONG i) {
    return ((i != 0) && !(i & (i - 1)));
}
