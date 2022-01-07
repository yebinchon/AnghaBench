
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bs_t ;


 int bs_read (int *,int) ;

__attribute__((used)) static int dirac_bool( bs_t *p_bs )
{
    return bs_read( p_bs, 1 );
}
