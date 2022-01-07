
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;


 int REAL_MUL (int ,int ) ;

void do_equalizer(real *bandPtr,int channel, real equalizer[2][32])
{
 int i;
 for(i=0;i<32;i++)
 bandPtr[i] = REAL_MUL(bandPtr[i], equalizer[channel][i]);
}
