
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uchar_t ;


 int fm_ena_generate_cpu (int ,int ,int ) ;
 int getcpuid () ;
 int kpreempt_disable () ;
 int kpreempt_enable () ;

uint64_t
fm_ena_generate(uint64_t timestamp, uchar_t format)
{
 uint64_t ena;

 kpreempt_disable();
 ena = fm_ena_generate_cpu(timestamp, getcpuid(), format);
 kpreempt_enable();

 return (ena);
}
