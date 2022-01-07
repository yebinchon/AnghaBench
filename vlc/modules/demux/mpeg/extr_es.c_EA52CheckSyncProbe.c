
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int A52CheckSync (int const*,int*,unsigned int*,int) ;

__attribute__((used)) static int EA52CheckSyncProbe( const uint8_t *p_peek, unsigned *pi_samples )
{
    bool b_dummy;
    return A52CheckSync( p_peek, &b_dummy, pi_samples, 1 );
}
