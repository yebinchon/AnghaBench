
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdf_processor ;
struct TYPE_4__ {int op_gs_UseBlackPtComp; int op_gs_OPM; int op_gs_op; int op_gs_OP; int op_EX; int op_BX; int op_EMC; int op_BDC; int op_BMC; int op_DP; int op_MP; int op_Do_form; int op_Do_image; int op_sh; int op_BI; int op_k; int op_K; int op_rg; int op_RG; int op_g; int op_G; int op_sc_shade; int op_SC_shade; int op_sc_pattern; int op_SC_pattern; int op_sc_color; int op_SC_color; int op_cs; int op_CS; int op_d1; int op_d0; int op_dquote; int op_squote; int op_Tj; int op_TJ; int op_Tstar; int op_Tm; int op_TD; int op_Td; int op_Ts; int op_Tr; int op_Tf; int op_TL; int op_Tz; int op_Tw; int op_Tc; int op_ET; int op_BT; int op_Wstar; int op_W; int op_n; int op_bstar; int op_b; int op_Bstar; int op_B; int op_fstar; int op_f; int op_F; int op_s; int op_S; int op_re; int op_h; int op_y; int op_v; int op_c; int op_l; int op_m; int op_cm; int op_Q; int op_q; int * op_gs_SMask; int * op_gs_ca; int * op_gs_CA; int * op_gs_BM; int op_gs_end; int op_gs_begin; int op_i; int op_ri; int op_d; int op_M; int op_J; int op_j; int op_w; int drop_processor; int close_processor; } ;
struct TYPE_5__ {int ahxencode; int * out; TYPE_1__ super; } ;
typedef TYPE_2__ pdf_output_processor ;
typedef int fz_output ;
typedef int fz_context ;


 int pdf_close_output_processor ;
 int pdf_drop_output_processor ;
 TYPE_2__* pdf_new_processor (int *,int) ;
 int pdf_out_B ;
 int pdf_out_BDC ;
 int pdf_out_BI ;
 int pdf_out_BMC ;
 int pdf_out_BT ;
 int pdf_out_BX ;
 int pdf_out_Bstar ;
 int pdf_out_CS ;
 int pdf_out_DP ;
 int pdf_out_Do_form ;
 int pdf_out_Do_image ;
 int pdf_out_EMC ;
 int pdf_out_ET ;
 int pdf_out_EX ;
 int pdf_out_F ;
 int pdf_out_G ;
 int pdf_out_J ;
 int pdf_out_K ;
 int pdf_out_M ;
 int pdf_out_MP ;
 int pdf_out_Q ;
 int pdf_out_RG ;
 int pdf_out_S ;
 int pdf_out_SC_color ;
 int pdf_out_SC_pattern ;
 int pdf_out_SC_shade ;
 int pdf_out_TD ;
 int pdf_out_TJ ;
 int pdf_out_TL ;
 int pdf_out_Tc ;
 int pdf_out_Td ;
 int pdf_out_Tf ;
 int pdf_out_Tj ;
 int pdf_out_Tm ;
 int pdf_out_Tr ;
 int pdf_out_Ts ;
 int pdf_out_Tstar ;
 int pdf_out_Tw ;
 int pdf_out_Tz ;
 int pdf_out_W ;
 int pdf_out_Wstar ;
 int pdf_out_b ;
 int pdf_out_bstar ;
 int pdf_out_c ;
 int pdf_out_cm ;
 int pdf_out_cs ;
 int pdf_out_d ;
 int pdf_out_d0 ;
 int pdf_out_d1 ;
 int pdf_out_dquote ;
 int pdf_out_f ;
 int pdf_out_fstar ;
 int pdf_out_g ;
 int pdf_out_gs_OP ;
 int pdf_out_gs_OPM ;
 int pdf_out_gs_UseBlackPtComp ;
 int pdf_out_gs_begin ;
 int pdf_out_gs_end ;
 int pdf_out_gs_op ;
 int pdf_out_h ;
 int pdf_out_i ;
 int pdf_out_j ;
 int pdf_out_k ;
 int pdf_out_l ;
 int pdf_out_m ;
 int pdf_out_n ;
 int pdf_out_q ;
 int pdf_out_re ;
 int pdf_out_rg ;
 int pdf_out_ri ;
 int pdf_out_s ;
 int pdf_out_sc_color ;
 int pdf_out_sc_pattern ;
 int pdf_out_sc_shade ;
 int pdf_out_sh ;
 int pdf_out_squote ;
 int pdf_out_v ;
 int pdf_out_w ;
 int pdf_out_y ;

pdf_processor *
pdf_new_output_processor(fz_context *ctx, fz_output *out, int ahxencode)
{
 pdf_output_processor *proc = pdf_new_processor(ctx, sizeof *proc);
 {
  proc->super.close_processor = pdf_close_output_processor;
  proc->super.drop_processor = pdf_drop_output_processor;


  proc->super.op_w = pdf_out_w;
  proc->super.op_j = pdf_out_j;
  proc->super.op_J = pdf_out_J;
  proc->super.op_M = pdf_out_M;
  proc->super.op_d = pdf_out_d;
  proc->super.op_ri = pdf_out_ri;
  proc->super.op_i = pdf_out_i;
  proc->super.op_gs_begin = pdf_out_gs_begin;
  proc->super.op_gs_end = pdf_out_gs_end;


  proc->super.op_gs_BM = ((void*)0);
  proc->super.op_gs_CA = ((void*)0);
  proc->super.op_gs_ca = ((void*)0);
  proc->super.op_gs_SMask = ((void*)0);


  proc->super.op_q = pdf_out_q;
  proc->super.op_Q = pdf_out_Q;
  proc->super.op_cm = pdf_out_cm;


  proc->super.op_m = pdf_out_m;
  proc->super.op_l = pdf_out_l;
  proc->super.op_c = pdf_out_c;
  proc->super.op_v = pdf_out_v;
  proc->super.op_y = pdf_out_y;
  proc->super.op_h = pdf_out_h;
  proc->super.op_re = pdf_out_re;


  proc->super.op_S = pdf_out_S;
  proc->super.op_s = pdf_out_s;
  proc->super.op_F = pdf_out_F;
  proc->super.op_f = pdf_out_f;
  proc->super.op_fstar = pdf_out_fstar;
  proc->super.op_B = pdf_out_B;
  proc->super.op_Bstar = pdf_out_Bstar;
  proc->super.op_b = pdf_out_b;
  proc->super.op_bstar = pdf_out_bstar;
  proc->super.op_n = pdf_out_n;


  proc->super.op_W = pdf_out_W;
  proc->super.op_Wstar = pdf_out_Wstar;


  proc->super.op_BT = pdf_out_BT;
  proc->super.op_ET = pdf_out_ET;


  proc->super.op_Tc = pdf_out_Tc;
  proc->super.op_Tw = pdf_out_Tw;
  proc->super.op_Tz = pdf_out_Tz;
  proc->super.op_TL = pdf_out_TL;
  proc->super.op_Tf = pdf_out_Tf;
  proc->super.op_Tr = pdf_out_Tr;
  proc->super.op_Ts = pdf_out_Ts;


  proc->super.op_Td = pdf_out_Td;
  proc->super.op_TD = pdf_out_TD;
  proc->super.op_Tm = pdf_out_Tm;
  proc->super.op_Tstar = pdf_out_Tstar;


  proc->super.op_TJ = pdf_out_TJ;
  proc->super.op_Tj = pdf_out_Tj;
  proc->super.op_squote = pdf_out_squote;
  proc->super.op_dquote = pdf_out_dquote;


  proc->super.op_d0 = pdf_out_d0;
  proc->super.op_d1 = pdf_out_d1;


  proc->super.op_CS = pdf_out_CS;
  proc->super.op_cs = pdf_out_cs;
  proc->super.op_SC_color = pdf_out_SC_color;
  proc->super.op_sc_color = pdf_out_sc_color;
  proc->super.op_SC_pattern = pdf_out_SC_pattern;
  proc->super.op_sc_pattern = pdf_out_sc_pattern;
  proc->super.op_SC_shade = pdf_out_SC_shade;
  proc->super.op_sc_shade = pdf_out_sc_shade;

  proc->super.op_G = pdf_out_G;
  proc->super.op_g = pdf_out_g;
  proc->super.op_RG = pdf_out_RG;
  proc->super.op_rg = pdf_out_rg;
  proc->super.op_K = pdf_out_K;
  proc->super.op_k = pdf_out_k;


  proc->super.op_BI = pdf_out_BI;
  proc->super.op_sh = pdf_out_sh;
  proc->super.op_Do_image = pdf_out_Do_image;
  proc->super.op_Do_form = pdf_out_Do_form;


  proc->super.op_MP = pdf_out_MP;
  proc->super.op_DP = pdf_out_DP;
  proc->super.op_BMC = pdf_out_BMC;
  proc->super.op_BDC = pdf_out_BDC;
  proc->super.op_EMC = pdf_out_EMC;


  proc->super.op_BX = pdf_out_BX;
  proc->super.op_EX = pdf_out_EX;


  proc->super.op_gs_OP = pdf_out_gs_OP;
  proc->super.op_gs_op = pdf_out_gs_op;
  proc->super.op_gs_OPM = pdf_out_gs_OPM;
  proc->super.op_gs_UseBlackPtComp = pdf_out_gs_UseBlackPtComp;
 }

 proc->out = out;
 proc->ahxencode = ahxencode;

 return (pdf_processor*)proc;
}
