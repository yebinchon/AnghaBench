
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int a; int c; int columns; int stage; int dst; } ;
typedef TYPE_1__ fz_faxd ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int STATE_MAKEUP ;
 int STATE_NORMAL ;
 int UNCOMPRESSED ;
 int cf_black_decode ;
 int cf_white_decode ;
 int cfd_black_initial_bits ;
 int cfd_white_initial_bits ;
 int fz_throw (int *,int ,char*) ;
 int get_code (int *,TYPE_1__*,int ,int ) ;
 int setbits (int ,int,int) ;

__attribute__((used)) static void
dec1d(fz_context *ctx, fz_faxd *fax)
{
 int code;

 if (fax->a == -1)
  fax->a = 0;

 if (fax->c)
  code = get_code(ctx, fax, cf_black_decode, cfd_black_initial_bits);
 else
  code = get_code(ctx, fax, cf_white_decode, cfd_white_initial_bits);

 if (code == UNCOMPRESSED)
  fz_throw(ctx, FZ_ERROR_GENERIC, "uncompressed data in faxd");

 if (code < 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "negative code in 1d faxd");

 if (fax->a + code > fax->columns)
  fz_throw(ctx, FZ_ERROR_GENERIC, "overflow in 1d faxd");

 if (fax->c)
  setbits(fax->dst, fax->a, fax->a + code);

 fax->a += code;

 if (code < 64)
 {
  fax->c = !fax->c;
  fax->stage = STATE_NORMAL;
 }
 else
  fax->stage = STATE_MAKEUP;
}
