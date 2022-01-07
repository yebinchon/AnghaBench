
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scan_parameter_t ;


 int memset (int *,int ,int) ;

void scan_parameter_Init( scan_parameter_t *p_dst )
{
    memset( p_dst, 0, sizeof(*p_dst) );
}
