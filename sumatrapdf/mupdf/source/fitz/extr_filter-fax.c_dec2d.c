
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ stage; int a; int c; int columns; int dst; int ref; } ;
typedef TYPE_1__ fz_faxd ;
typedef int fz_context ;



 int FZ_ERROR_GENERIC ;


 scalar_t__ STATE_H1 ;
 scalar_t__ STATE_H2 ;
 scalar_t__ STATE_NORMAL ;
 int cf_2d_decode ;
 int cf_black_decode ;
 int cf_white_decode ;
 int cfd_2d_initial_bits ;
 int cfd_black_initial_bits ;
 int cfd_white_initial_bits ;
 int find_changing (int ,int,int) ;
 int find_changing_color (int ,int,int,int) ;
 int fz_throw (int *,int ,char*,...) ;
 int get_code (int *,TYPE_1__*,int ,int ) ;
 int setbits (int ,int,int) ;

__attribute__((used)) static void
dec2d(fz_context *ctx, fz_faxd *fax)
{
 int code, b1, b2;

 if (fax->stage == STATE_H1 || fax->stage == STATE_H2)
 {
  if (fax->a == -1)
   fax->a = 0;

  if (fax->c)
   code = get_code(ctx, fax, cf_black_decode, cfd_black_initial_bits);
  else
   code = get_code(ctx, fax, cf_white_decode, cfd_white_initial_bits);

  if (code == 135)
   fz_throw(ctx, FZ_ERROR_GENERIC, "uncompressed data in faxd");

  if (code < 0)
   fz_throw(ctx, FZ_ERROR_GENERIC, "negative code in 2d faxd");

  if (fax->a + code > fax->columns)
   fz_throw(ctx, FZ_ERROR_GENERIC, "overflow in 2d faxd");

  if (fax->c)
   setbits(fax->dst, fax->a, fax->a + code);

  fax->a += code;

  if (code < 64)
  {
   fax->c = !fax->c;
   if (fax->stage == STATE_H1)
    fax->stage = STATE_H2;
   else if (fax->stage == STATE_H2)
    fax->stage = STATE_NORMAL;
  }

  return;
 }

 code = get_code(ctx, fax, cf_2d_decode, cfd_2d_initial_bits);

 switch (code)
 {
 case 137:
  fax->stage = STATE_H1;
  break;

 case 136:
  b1 = find_changing_color(fax->ref, fax->a, fax->columns, !fax->c);
  if (b1 >= fax->columns)
   b2 = fax->columns;
  else
   b2 = find_changing(fax->ref, b1, fax->columns);
  if (fax->c) setbits(fax->dst, fax->a, b2);
  fax->a = b2;
  break;

 case 134:
  b1 = find_changing_color(fax->ref, fax->a, fax->columns, !fax->c);
  if (fax->c) setbits(fax->dst, fax->a, b1);
  fax->a = b1;
  fax->c = !fax->c;
  break;

 case 130:
  b1 = 1 + find_changing_color(fax->ref, fax->a, fax->columns, !fax->c);
  if (b1 >= fax->columns) b1 = fax->columns;
  if (fax->c) setbits(fax->dst, fax->a, b1);
  fax->a = b1;
  fax->c = !fax->c;
  break;

 case 129:
  b1 = 2 + find_changing_color(fax->ref, fax->a, fax->columns, !fax->c);
  if (b1 >= fax->columns) b1 = fax->columns;
  if (fax->c) setbits(fax->dst, fax->a, b1);
  fax->a = b1;
  fax->c = !fax->c;
  break;

 case 128:
  b1 = 3 + find_changing_color(fax->ref, fax->a, fax->columns, !fax->c);
  if (b1 >= fax->columns) b1 = fax->columns;
  if (fax->c) setbits(fax->dst, fax->a, b1);
  fax->a = b1;
  fax->c = !fax->c;
  break;

 case 133:
  b1 = -1 + find_changing_color(fax->ref, fax->a, fax->columns, !fax->c);
  if (b1 < 0) b1 = 0;
  if (fax->c) setbits(fax->dst, fax->a, b1);
  fax->a = b1;
  fax->c = !fax->c;
  break;

 case 132:
  b1 = -2 + find_changing_color(fax->ref, fax->a, fax->columns, !fax->c);
  if (b1 < 0) b1 = 0;
  if (fax->c) setbits(fax->dst, fax->a, b1);
  fax->a = b1;
  fax->c = !fax->c;
  break;

 case 131:
  b1 = -3 + find_changing_color(fax->ref, fax->a, fax->columns, !fax->c);
  if (b1 < 0) b1 = 0;
  if (fax->c) setbits(fax->dst, fax->a, b1);
  fax->a = b1;
  fax->c = !fax->c;
  break;

 case 135:
  fz_throw(ctx, FZ_ERROR_GENERIC, "uncompressed data in faxd");

 case 138:
  fz_throw(ctx, FZ_ERROR_GENERIC, "invalid code in 2d faxd");

 default:
  fz_throw(ctx, FZ_ERROR_GENERIC, "invalid code in 2d faxd (%d)", code);
 }
}
