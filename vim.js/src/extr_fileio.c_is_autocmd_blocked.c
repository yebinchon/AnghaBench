
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ autocmd_blocked ;

int
is_autocmd_blocked()
{
    return autocmd_blocked != 0;
}
