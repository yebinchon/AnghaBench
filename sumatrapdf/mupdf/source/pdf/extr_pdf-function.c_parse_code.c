
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int pdf_token ;
struct TYPE_15__ {int scratch; int f; int i; } ;
typedef TYPE_5__ pdf_lexbuf ;
struct TYPE_12__ {TYPE_4__* code; } ;
struct TYPE_13__ {TYPE_2__ p; } ;
struct TYPE_16__ {TYPE_3__ u; } ;
typedef TYPE_6__ pdf_function ;
typedef int fz_stream ;
typedef int fz_context ;
struct TYPE_11__ {int b; int op; int block; int f; int i; } ;
struct TYPE_14__ {TYPE_1__ u; void* type; } ;


 int FZ_ERROR_SYNTAX ;
 void* PS_BLOCK ;
 void* PS_BOOL ;
 void* PS_INT ;
 void* PS_OPERATOR ;
 int PS_OP_IF ;
 int PS_OP_IFELSE ;
 int PS_OP_RETURN ;
 void* PS_REAL ;
 int fz_throw (int *,int ,char*,...) ;
 int nelem (char**) ;
 int pdf_lex (int *,int *,TYPE_5__*) ;
 char** ps_op_names ;
 int resize_code (int *,TYPE_6__*,int) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static void
parse_code(fz_context *ctx, pdf_function *func, fz_stream *stream, int *codeptr, pdf_lexbuf *buf)
{
 pdf_token tok;
 int opptr, elseptr, ifptr;
 int a, b, mid, cmp;

 while (1)
 {
  tok = pdf_lex(ctx, stream, buf);

  switch (tok)
  {
  case 134:
   fz_throw(ctx, FZ_ERROR_SYNTAX, "truncated calculator function");

  case 132:
   resize_code(ctx, func, *codeptr);
   func->u.p.code[*codeptr].type = PS_INT;
   func->u.p.code[*codeptr].u.i = buf->i;
   ++*codeptr;
   break;

  case 128:
   resize_code(ctx, func, *codeptr);
   func->u.p.code[*codeptr].type = PS_BOOL;
   func->u.p.code[*codeptr].u.b = 1;
   ++*codeptr;
   break;

  case 133:
   resize_code(ctx, func, *codeptr);
   func->u.p.code[*codeptr].type = PS_BOOL;
   func->u.p.code[*codeptr].u.b = 0;
   ++*codeptr;
   break;

  case 129:
   resize_code(ctx, func, *codeptr);
   func->u.p.code[*codeptr].type = PS_REAL;
   func->u.p.code[*codeptr].u.f = buf->f;
   ++*codeptr;
   break;

  case 130:
   opptr = *codeptr;
   *codeptr += 4;

   resize_code(ctx, func, *codeptr);

   ifptr = *codeptr;
   parse_code(ctx, func, stream, codeptr, buf);

   tok = pdf_lex(ctx, stream, buf);

   if (tok == 130)
   {
    elseptr = *codeptr;
    parse_code(ctx, func, stream, codeptr, buf);

    tok = pdf_lex(ctx, stream, buf);
   }
   else
   {
    elseptr = -1;
   }

   if (tok != 131)
    fz_throw(ctx, FZ_ERROR_SYNTAX, "missing keyword in 'if-else' context");

   if (!strcmp(buf->scratch, "if"))
   {
    if (elseptr >= 0)
     fz_throw(ctx, FZ_ERROR_SYNTAX, "too many branches for 'if'");
    func->u.p.code[opptr].type = PS_OPERATOR;
    func->u.p.code[opptr].u.op = PS_OP_IF;
    func->u.p.code[opptr+2].type = PS_BLOCK;
    func->u.p.code[opptr+2].u.block = ifptr;
    func->u.p.code[opptr+3].type = PS_BLOCK;
    func->u.p.code[opptr+3].u.block = *codeptr;
   }
   else if (!strcmp(buf->scratch, "ifelse"))
   {
    if (elseptr < 0)
     fz_throw(ctx, FZ_ERROR_SYNTAX, "not enough branches for 'ifelse'");
    func->u.p.code[opptr].type = PS_OPERATOR;
    func->u.p.code[opptr].u.op = PS_OP_IFELSE;
    func->u.p.code[opptr+1].type = PS_BLOCK;
    func->u.p.code[opptr+1].u.block = elseptr;
    func->u.p.code[opptr+2].type = PS_BLOCK;
    func->u.p.code[opptr+2].u.block = ifptr;
    func->u.p.code[opptr+3].type = PS_BLOCK;
    func->u.p.code[opptr+3].u.block = *codeptr;
   }
   else
   {
    fz_throw(ctx, FZ_ERROR_SYNTAX, "unknown keyword in 'if-else' context: '%s'", buf->scratch);
   }
   break;

  case 135:
   resize_code(ctx, func, *codeptr);
   func->u.p.code[*codeptr].type = PS_OPERATOR;
   func->u.p.code[*codeptr].u.op = PS_OP_RETURN;
   ++*codeptr;
   return;

  case 131:
   cmp = -1;
   a = -1;
   b = nelem(ps_op_names);
   while (b - a > 1)
   {
    mid = (a + b) / 2;
    cmp = strcmp(buf->scratch, ps_op_names[mid]);
    if (cmp > 0)
     a = mid;
    else if (cmp < 0)
     b = mid;
    else
     a = b = mid;
   }
   if (cmp != 0)
    fz_throw(ctx, FZ_ERROR_SYNTAX, "unknown operator: '%s'", buf->scratch);
   if (a == PS_OP_IFELSE)
    fz_throw(ctx, FZ_ERROR_SYNTAX, "illegally positioned ifelse operator in function");
   if (a == PS_OP_IF)
    fz_throw(ctx, FZ_ERROR_SYNTAX, "illegally positioned if operator in function");

   resize_code(ctx, func, *codeptr);
   func->u.p.code[*codeptr].type = PS_OPERATOR;
   func->u.p.code[*codeptr].u.op = a;
   ++*codeptr;
   break;

  default:
   fz_throw(ctx, FZ_ERROR_SYNTAX, "calculator function syntax error");
  }
 }
}
