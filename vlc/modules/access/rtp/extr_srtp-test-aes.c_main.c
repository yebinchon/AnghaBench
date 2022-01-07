
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GCRYCTL_DISABLE_SECMEM ;
 int gcry_control (int ,int *) ;
 int srtp_test () ;

int main (void)
{
    gcry_control (GCRYCTL_DISABLE_SECMEM, ((void*)0));
    srtp_test ();
    return 0;
}
