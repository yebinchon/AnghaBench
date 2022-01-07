
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;


struct TYPE_17__ {int needsp; int cts; } ;
struct TYPE_16__ {int info; int size; } ;
struct TYPE_15__ {int size; } ;
typedef int CTypeID ;
typedef TYPE_1__ CType ;
typedef int CTSize ;
typedef TYPE_2__ CTRepr ;
typedef int CTInfo ;


 int CTA_QUAL ;
 int CTF_BOOL ;
 int CTF_COMPLEX ;
 int CTF_FP ;
 int CTF_REF ;
 int CTF_UCHAR ;
 int CTF_UNION ;
 int CTF_UNSIGNED ;
 int CTF_VLA ;
 int CTID_CTYPEID ;
 int CTSIZE_INVALID ;
 int LJ_64 ;
 int ctype_appc (TYPE_2__*,char) ;
 int ctype_appnum (TYPE_2__*,int) ;
 int ctype_attrib (int) ;
 TYPE_11__* ctype_child (int ,TYPE_1__*) ;
 int ctype_cid (int) ;
 TYPE_1__* ctype_get (int ,int ) ;
 int ctype_isrefarray (int) ;
 int ctype_prepc (TYPE_2__*,char) ;
 int ctype_preplit (TYPE_2__*,char*) ;
 int ctype_prepnum (TYPE_2__*,int) ;
 int ctype_prepqual (TYPE_2__*,int) ;
 int ctype_preptype (TYPE_2__*,TYPE_1__*,int,char*) ;
 int ctype_type (int) ;
 int lua_assert (int ) ;

__attribute__((used)) static void ctype_repr(CTRepr *ctr, CTypeID id)
{
  CType *ct = ctype_get(ctr->cts, id);
  CTInfo qual = 0;
  int ptrto = 0;
  for (;;) {
    CTInfo info = ct->info;
    CTSize size = ct->size;
    switch (ctype_type(info)) {
    case 131:
      if ((info & CTF_BOOL)) {
 ctype_preplit(ctr, "bool");
      } else if ((info & CTF_FP)) {
 if (size == sizeof(double)) ctype_preplit(ctr, "double");
 else if (size == sizeof(float)) ctype_preplit(ctr, "float");
 else ctype_preplit(ctr, "long double");
      } else if (size == 1) {
 if (!((info ^ CTF_UCHAR) & CTF_UNSIGNED)) ctype_preplit(ctr, "char");
 else if (CTF_UCHAR) ctype_preplit(ctr, "signed char");
 else ctype_preplit(ctr, "unsigned char");
      } else if (size < 8) {
 if (size == 4) ctype_preplit(ctr, "int");
 else ctype_preplit(ctr, "short");
 if ((info & CTF_UNSIGNED)) ctype_preplit(ctr, "unsigned");
      } else {
 ctype_preplit(ctr, "_t");
 ctype_prepnum(ctr, size*8);
 ctype_preplit(ctr, "int");
 if ((info & CTF_UNSIGNED)) ctype_prepc(ctr, 'u');
      }
      ctype_prepqual(ctr, (qual|info));
      return;
    case 128:
      ctype_preplit(ctr, "void");
      ctype_prepqual(ctr, (qual|info));
      return;
    case 129:
      ctype_preptype(ctr, ct, qual, (info & CTF_UNION) ? "union" : "struct");
      return;
    case 133:
      if (id == CTID_CTYPEID) {
 ctype_preplit(ctr, "ctype");
 return;
      }
      ctype_preptype(ctr, ct, qual, "enum");
      return;
    case 134:
      if (ctype_attrib(info) == CTA_QUAL) qual |= size;
      break;
    case 130:
      if ((info & CTF_REF)) {
 ctype_prepc(ctr, '&');
      } else {
 ctype_prepqual(ctr, (qual|info));
 if (LJ_64 && size == 4) ctype_preplit(ctr, "__ptr32");
 ctype_prepc(ctr, '*');
      }
      qual = 0;
      ptrto = 1;
      ctr->needsp = 1;
      break;
    case 135:
      if (ctype_isrefarray(info)) {
 ctr->needsp = 1;
 if (ptrto) { ptrto = 0; ctype_prepc(ctr, '('); ctype_appc(ctr, ')'); }
 ctype_appc(ctr, '[');
 if (size != CTSIZE_INVALID) {
   CTSize csize = ctype_child(ctr->cts, ct)->size;
   ctype_appnum(ctr, csize ? size/csize : 0);
 } else if ((info & CTF_VLA)) {
   ctype_appc(ctr, '?');
 }
 ctype_appc(ctr, ']');
      } else if ((info & CTF_COMPLEX)) {
 if (size == 2*sizeof(float)) ctype_preplit(ctr, "float");
 ctype_preplit(ctr, "complex");
 return;
      } else {
 ctype_preplit(ctr, ")))");
 ctype_prepnum(ctr, size);
 ctype_preplit(ctr, "__attribute__((vector_size(");
      }
      break;
    case 132:
      ctr->needsp = 1;
      if (ptrto) { ptrto = 0; ctype_prepc(ctr, '('); ctype_appc(ctr, ')'); }
      ctype_appc(ctr, '(');
      ctype_appc(ctr, ')');
      break;
    default:
      lua_assert(0);
      break;
    }
    ct = ctype_get(ctr->cts, ctype_cid(info));
  }
}
