
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int bytea ;
struct TYPE_11__ {TYPE_1__* flinfo; } ;
struct TYPE_10__ {scalar_t__ type_oid; int datum; scalar_t__ is_null; } ;
struct TYPE_9__ {scalar_t__ type_oid; int proc; } ;
struct TYPE_8__ {int fn_mcxt; } ;
typedef int StringInfo ;
typedef TYPE_2__ PolyDatumIOState ;
typedef TYPE_3__ PolyDatum ;
typedef int Oid ;
typedef TYPE_4__* FunctionCallInfo ;


 int * SendFunctionCall (int *,int ) ;
 int VARDATA (int *) ;
 int VARHDRSZ ;
 int VARSIZE (int *) ;
 int fmgr_info_cxt (int ,int *,int ) ;
 int getTypeBinaryOutputInfo (scalar_t__,int *,int*) ;
 int polydatum_serialize_type (int ,scalar_t__) ;
 int pq_sendbytes (int ,int ,int) ;
 int pq_sendint32 (int ,int) ;

__attribute__((used)) static void
polydatum_serialize(PolyDatum *pd, StringInfo buf, PolyDatumIOState *state, FunctionCallInfo fcinfo)
{
 bytea *outputbytes;

 polydatum_serialize_type(buf, pd->type_oid);

 if (pd->is_null)
 {

  pq_sendint32(buf, -1);
  return;
 }

 if (state->type_oid != pd->type_oid)
 {
  Oid func;
  bool is_varlena;

  getTypeBinaryOutputInfo(pd->type_oid, &func, &is_varlena);
  fmgr_info_cxt(func, &state->proc, fcinfo->flinfo->fn_mcxt);
  state->type_oid = pd->type_oid;
 }
 outputbytes = SendFunctionCall(&state->proc, pd->datum);
 pq_sendint32(buf, VARSIZE(outputbytes) - VARHDRSZ);
 pq_sendbytes(buf, VARDATA(outputbytes), VARSIZE(outputbytes) - VARHDRSZ);
}
