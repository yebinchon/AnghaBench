
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_tls_t ;


 scalar_t__ opj_calloc (int,int) ;

__attribute__((used)) static opj_tls_t* opj_tls_new(void)
{
    return (opj_tls_t*) opj_calloc(1, sizeof(opj_tls_t));
}
