
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_17__ {int encryption_auth_len; int signature_auth_len; int ctx; int attr; int exp; TYPE_1__* AuthInfo; scalar_t__ server; } ;
struct TYPE_16__ {unsigned char* pvBuffer; unsigned int cbBuffer; void* BufferType; } ;
struct TYPE_15__ {int cBuffers; TYPE_4__* pBuffers; scalar_t__ ulVersion; } ;
struct TYPE_14__ {int cbSecurityTrailer; int cbMaxSignature; } ;
struct TYPE_13__ {unsigned int cbMaxToken; scalar_t__ AuthnLevel; int * server_principal_name; int cred; } ;
typedef TYPE_2__ SecPkgContext_Sizes ;
typedef TYPE_3__ SecBufferDesc ;
typedef TYPE_4__ SecBuffer ;
typedef scalar_t__ SECURITY_STATUS ;
typedef TYPE_5__ RpcConnection ;
typedef int RPC_STATUS ;
typedef int BOOL ;


 int ASC_REQ_CONFIDENTIALITY ;
 int ASC_REQ_CONNECTION ;
 int ASC_REQ_DELEGATE ;
 int ASC_REQ_INTEGRITY ;
 int ASC_REQ_USE_DCE_STYLE ;
 scalar_t__ AcceptSecurityContext (int *,int *,TYPE_3__*,int,int ,int *,TYPE_3__*,int *,int *) ;
 scalar_t__ CompleteAuthToken (int *,TYPE_3__*) ;
 int ERROR_ACCESS_DENIED ;
 scalar_t__ FAILED (scalar_t__) ;
 int ISC_REQ_CONFIDENTIALITY ;
 int ISC_REQ_CONNECTION ;
 int ISC_REQ_DELEGATE ;
 int ISC_REQ_INTEGRITY ;
 int ISC_REQ_MUTUAL_AUTH ;
 int ISC_REQ_USE_DCE_STYLE ;
 scalar_t__ InitializeSecurityContextW (int *,int *,int *,int,int ,int ,TYPE_3__*,int ,int *,TYPE_3__*,int *,int *) ;
 scalar_t__ QueryContextAttributesA (int *,int ,TYPE_2__*) ;
 scalar_t__ RPC_C_AUTHN_LEVEL_PKT_INTEGRITY ;
 scalar_t__ RPC_C_AUTHN_LEVEL_PKT_PRIVACY ;
 int RPC_S_OK ;
 void* SECBUFFER_TOKEN ;
 int SECPKG_ATTR_SIZES ;
 int SECURITY_NETWORK_DREP ;
 scalar_t__ SEC_E_OK ;
 scalar_t__ SEC_I_COMPLETE_AND_CONTINUE ;
 scalar_t__ SEC_I_COMPLETE_NEEDED ;
 scalar_t__ SEC_I_CONTINUE_NEEDED ;
 int TRACE (char*,...) ;
 int WARN (char*,scalar_t__) ;

RPC_STATUS RPCRT4_default_authorize(RpcConnection *conn, BOOL first_time,
                                    unsigned char *in_buffer,
                                    unsigned int in_size,
                                    unsigned char *out_buffer,
                                    unsigned int *out_size)
{
  SECURITY_STATUS r;
  SecBufferDesc out_desc;
  SecBufferDesc inp_desc;
  SecPkgContext_Sizes secctx_sizes;
  BOOL continue_needed;
  ULONG context_req;
  SecBuffer in, out;

  if (!out_buffer)
  {
    *out_size = conn->AuthInfo->cbMaxToken;
    return RPC_S_OK;
  }

  in.BufferType = SECBUFFER_TOKEN;
  in.pvBuffer = in_buffer;
  in.cbBuffer = in_size;

  out.BufferType = SECBUFFER_TOKEN;
  out.pvBuffer = out_buffer;
  out.cbBuffer = *out_size;

  out_desc.ulVersion = 0;
  out_desc.cBuffers = 1;
  out_desc.pBuffers = &out;

  inp_desc.ulVersion = 0;
  inp_desc.cBuffers = 1;
  inp_desc.pBuffers = &in;

  if (conn->server)
  {
      context_req = ASC_REQ_CONNECTION | ASC_REQ_USE_DCE_STYLE |
                    ASC_REQ_DELEGATE;

      if (conn->AuthInfo->AuthnLevel == RPC_C_AUTHN_LEVEL_PKT_INTEGRITY)
          context_req |= ASC_REQ_INTEGRITY;
      else if (conn->AuthInfo->AuthnLevel == RPC_C_AUTHN_LEVEL_PKT_PRIVACY)
          context_req |= ASC_REQ_CONFIDENTIALITY | ASC_REQ_INTEGRITY;

      r = AcceptSecurityContext(&conn->AuthInfo->cred,
                                first_time ? ((void*)0) : &conn->ctx,
                                &inp_desc, context_req, SECURITY_NETWORK_DREP,
                                &conn->ctx,
                                &out_desc, &conn->attr, &conn->exp);
      if (r == SEC_E_OK || r == SEC_I_COMPLETE_NEEDED)
      {

          out.cbBuffer = 0;
      }
  }
  else
  {
      context_req = ISC_REQ_CONNECTION | ISC_REQ_USE_DCE_STYLE |
                    ISC_REQ_MUTUAL_AUTH | ISC_REQ_DELEGATE;

      if (conn->AuthInfo->AuthnLevel == RPC_C_AUTHN_LEVEL_PKT_INTEGRITY)
          context_req |= ISC_REQ_INTEGRITY;
      else if (conn->AuthInfo->AuthnLevel == RPC_C_AUTHN_LEVEL_PKT_PRIVACY)
          context_req |= ISC_REQ_CONFIDENTIALITY | ISC_REQ_INTEGRITY;

      r = InitializeSecurityContextW(&conn->AuthInfo->cred,
                                     first_time ? ((void*)0): &conn->ctx,
                                     first_time ? conn->AuthInfo->server_principal_name : ((void*)0),
                                     context_req, 0, SECURITY_NETWORK_DREP,
                                     first_time ? ((void*)0) : &inp_desc, 0, &conn->ctx,
                                     &out_desc, &conn->attr, &conn->exp);
  }
  if (FAILED(r))
  {
      WARN("InitializeSecurityContext failed with error 0x%08x\n", r);
      goto failed;
  }

  TRACE("r = 0x%08x, attr = 0x%08x\n", r, conn->attr);
  continue_needed = ((r == SEC_I_CONTINUE_NEEDED) ||
                     (r == SEC_I_COMPLETE_AND_CONTINUE));

  if ((r == SEC_I_COMPLETE_NEEDED) || (r == SEC_I_COMPLETE_AND_CONTINUE))
  {
      TRACE("complete needed\n");
      r = CompleteAuthToken(&conn->ctx, &out_desc);
      if (FAILED(r))
      {
          WARN("CompleteAuthToken failed with error 0x%08x\n", r);
          goto failed;
      }
  }

  TRACE("cbBuffer = %d\n", out.cbBuffer);

  if (!continue_needed)
  {
      r = QueryContextAttributesA(&conn->ctx, SECPKG_ATTR_SIZES, &secctx_sizes);
      if (FAILED(r))
      {
          WARN("QueryContextAttributes failed with error 0x%08x\n", r);
          goto failed;
      }
      conn->signature_auth_len = secctx_sizes.cbMaxSignature;
      conn->encryption_auth_len = secctx_sizes.cbSecurityTrailer;
  }

  *out_size = out.cbBuffer;
  return RPC_S_OK;

failed:
  *out_size = 0;
  return ERROR_ACCESS_DENIED;
}
