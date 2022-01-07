
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_3dnow (int ) ;
 scalar_t__ cpu_3dnowext (int ) ;
 scalar_t__ cpu_avx (int ) ;
 int cpu_flags ;
 scalar_t__ cpu_i586 (int ) ;
 scalar_t__ cpu_mmx (int ) ;
 scalar_t__ cpu_neon (int ) ;
 scalar_t__ cpu_sse (int ) ;
 int dn_altivec ;
 int dn_arm ;
 int dn_avx ;
 int dn_dreidnow ;
 int dn_dreidnow_vintage ;
 int dn_dreidnowext ;
 int dn_dreidnowext_vintage ;
 int dn_generic ;
 int dn_generic_dither ;
 int dn_idrei ;
 int dn_ifuenf ;
 int dn_ifuenf_dither ;
 int dn_ivier ;
 int dn_mmx ;
 int dn_neon ;
 int dn_neon64 ;
 int dn_sse ;
 int dn_sse_vintage ;
 int dn_x86_64 ;
 int getcpuflags (int *) ;
 char** mpg123_supported_decoder_list ;

void check_decoders(void )
{


 return;
}
