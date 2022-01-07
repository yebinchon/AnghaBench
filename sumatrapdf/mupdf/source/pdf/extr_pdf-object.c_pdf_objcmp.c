
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_18__ ;
typedef struct TYPE_22__ TYPE_16__ ;
typedef struct TYPE_21__ TYPE_14__ ;
typedef struct TYPE_20__ TYPE_12__ ;


struct TYPE_26__ {scalar_t__ kind; } ;
typedef TYPE_3__ pdf_obj ;
typedef int fz_context ;
struct TYPE_28__ {int num; int gen; } ;
struct TYPE_27__ {int len; int buf; } ;
struct TYPE_25__ {TYPE_3__* v; TYPE_3__* k; } ;
struct TYPE_24__ {int i; int f; } ;
struct TYPE_23__ {int len; TYPE_3__** items; } ;
struct TYPE_22__ {int len; TYPE_2__* items; } ;
struct TYPE_21__ {int n; } ;
struct TYPE_20__ {TYPE_1__ u; } ;


 TYPE_18__* ARRAY (TYPE_3__*) ;
 TYPE_16__* DICT (TYPE_3__*) ;
 TYPE_14__* NAME (TYPE_3__*) ;
 TYPE_12__* NUM (TYPE_3__*) ;


 TYPE_3__* PDF_FALSE ;


 TYPE_3__* PDF_LIMIT ;

 int * PDF_NAME_LIST ;


 TYPE_8__* REF (TYPE_3__*) ;
 TYPE_6__* STRING (TYPE_3__*) ;
 int memcmp (int ,int ,int ) ;
 int strcmp (int ,int ) ;

int
pdf_objcmp(fz_context *ctx, pdf_obj *a, pdf_obj *b)
{
 int i;

 if (a == b)
  return 0;


 if (a <= PDF_FALSE || b <= PDF_FALSE)
  return 1;


 if (a < PDF_LIMIT)
 {
  if (b < PDF_LIMIT)
   return a != b;
  if (b->kind != 130)
   return 1;
  return strcmp(PDF_NAME_LIST[(intptr_t)a], NAME(b)->n);
 }


 if (b < PDF_LIMIT)
 {
  if (a->kind != 130)
   return 1;
  return strcmp(NAME(a)->n, PDF_NAME_LIST[(intptr_t)b]);
 }


 if (a->kind != b->kind)
  return 1;

 switch (a->kind)
 {
 case 131:
  return NUM(a)->u.i - NUM(b)->u.i;

 case 129:
  if (NUM(a)->u.f < NUM(b)->u.f)
   return -1;
  if (NUM(a)->u.f > NUM(b)->u.f)
   return 1;
  return 0;

 case 128:
  if (STRING(a)->len < STRING(b)->len)
  {
   if (memcmp(STRING(a)->buf, STRING(b)->buf, STRING(a)->len) <= 0)
    return -1;
   return 1;
  }
  if (STRING(a)->len > STRING(b)->len)
  {
   if (memcmp(STRING(a)->buf, STRING(b)->buf, STRING(b)->len) >= 0)
    return 1;
   return -1;
  }
  return memcmp(STRING(a)->buf, STRING(b)->buf, STRING(a)->len);

 case 130:
  return strcmp(NAME(a)->n, NAME(b)->n);

 case 132:
  if (REF(a)->num == REF(b)->num)
   return REF(a)->gen - REF(b)->gen;
  return REF(a)->num - REF(b)->num;

 case 134:
  if (ARRAY(a)->len != ARRAY(b)->len)
   return ARRAY(a)->len - ARRAY(b)->len;
  for (i = 0; i < ARRAY(a)->len; i++)
   if (pdf_objcmp(ctx, ARRAY(a)->items[i], ARRAY(b)->items[i]))
    return 1;
  return 0;

 case 133:
  if (DICT(a)->len != DICT(b)->len)
   return DICT(a)->len - DICT(b)->len;
  for (i = 0; i < DICT(a)->len; i++)
  {
   if (pdf_objcmp(ctx, DICT(a)->items[i].k, DICT(b)->items[i].k))
    return 1;
   if (pdf_objcmp(ctx, DICT(a)->items[i].v, DICT(b)->items[i].v))
    return 1;
  }
  return 0;
 }
 return 1;
}
