
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ m_data_size; int * m_data; } ;
typedef TYPE_1__ opj_tcp_t ;


 int opj_free (int *) ;

__attribute__((used)) static void opj_j2k_tcp_data_destroy(opj_tcp_t *p_tcp)
{
    if (p_tcp->m_data) {
        opj_free(p_tcp->m_data);
        p_tcp->m_data = ((void*)0);
        p_tcp->m_data_size = 0;
    }
}
