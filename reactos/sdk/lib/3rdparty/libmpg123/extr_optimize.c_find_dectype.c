
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ the_dct36; int type; int class; } ;
struct TYPE_7__ {scalar_t__** plain; } ;
struct TYPE_9__ {scalar_t__ synth; int err; TYPE_2__ cpu_opts; TYPE_1__ synths; } ;
typedef TYPE_3__ mpg123_handle ;
typedef scalar_t__ func_synth ;
typedef enum optdec { ____Placeholder_optdec } optdec ;
struct TYPE_10__ {int plain; } ;


 scalar_t__ FALSE ;
 int MPG123_BAD_DECODER_SETUP ;
 int MPG123_ERR ;
 int MPG123_OK ;
 scalar_t__ NOQUIET ;
 int altivec ;
 int arm ;
 int avx ;
 scalar_t__ dct36_3dnow ;
 scalar_t__ dct36_3dnowext ;
 int debug3 (char*,int,int ,int ) ;
 int decclass (int) ;
 int * decname ;
 int dreidnow ;
 int dreidnow_vintage ;
 int dreidnowext ;
 int dreidnowext_vintage ;
 int error (char*) ;
 size_t f_16 ;
 scalar_t__ find_synth (scalar_t__,int ) ;
 int generic ;
 int generic_dither ;
 int idrei ;
 int ifuenf ;
 int ifuenf_dither ;
 int ivier ;
 int mmx ;
 int neon ;
 int neon64 ;
 int nodec ;
 int plain_i386 ;
 size_t r_1to1 ;
 int sse_or_vintage (TYPE_3__*) ;
 scalar_t__ synth_1to1_3dnow ;
 scalar_t__ synth_1to1_3dnowext ;
 scalar_t__ synth_1to1_8bit_wrap ;
 scalar_t__ synth_1to1_altivec ;
 scalar_t__ synth_1to1_arm ;
 scalar_t__ synth_1to1_avx ;
 scalar_t__ synth_1to1_dither ;
 scalar_t__ synth_1to1_i586 ;
 scalar_t__ synth_1to1_i586_dither ;
 scalar_t__ synth_1to1_mmx ;
 scalar_t__ synth_1to1_neon ;
 scalar_t__ synth_1to1_neon64 ;
 scalar_t__ synth_1to1_real_altivec ;
 scalar_t__ synth_1to1_real_avx ;
 scalar_t__ synth_1to1_real_neon ;
 scalar_t__ synth_1to1_real_neon64 ;
 scalar_t__ synth_1to1_real_sse ;
 scalar_t__ synth_1to1_real_x86_64 ;
 scalar_t__ synth_1to1_s32_altivec ;
 scalar_t__ synth_1to1_s32_avx ;
 scalar_t__ synth_1to1_s32_neon ;
 scalar_t__ synth_1to1_s32_neon64 ;
 scalar_t__ synth_1to1_s32_sse ;
 scalar_t__ synth_1to1_s32_x86_64 ;
 scalar_t__ synth_1to1_sse ;
 scalar_t__ synth_1to1_x86_64 ;
 scalar_t__ synth_2to1_dither ;
 scalar_t__ synth_4to1_dither ;
 TYPE_4__ synth_base ;
 int x86_64 ;

__attribute__((used)) static int find_dectype(mpg123_handle *fr)
{
 enum optdec type = nodec;


 func_synth basic_synth = fr->synth;


 if(basic_synth == synth_1to1_8bit_wrap)
 basic_synth = fr->synths.plain[r_1to1][f_16];



 if(FALSE) ;
 else if(find_synth(basic_synth, synth_base.plain))
 type = generic;
 if(type != nodec)
 {
  fr->cpu_opts.type = type;
  fr->cpu_opts.class = decclass(type);

  debug3("determined active decoder type %i (%s) of class %i", type, decname[type], fr->cpu_opts.class);
  return MPG123_OK;
 }
 else
 {
  if(NOQUIET) error("Unable to determine active decoder type -- this is SERIOUS b0rkage!");

  fr->err = MPG123_BAD_DECODER_SETUP;
  return MPG123_ERR;
 }
}
