
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HttpAuthInfo {struct HttpAuthInfo* scheme; struct HttpAuthInfo* auth_data; int cred; int ctx; } ;


 int DeleteSecurityContext (int *) ;
 int FreeCredentialsHandle (int *) ;
 scalar_t__ SecIsValidHandle (int *) ;
 int heap_free (struct HttpAuthInfo*) ;

__attribute__((used)) static void destroy_authinfo( struct HttpAuthInfo *authinfo )
{
    if (!authinfo) return;

    if (SecIsValidHandle(&authinfo->ctx))
        DeleteSecurityContext(&authinfo->ctx);
    if (SecIsValidHandle(&authinfo->cred))
        FreeCredentialsHandle(&authinfo->cred);

    heap_free(authinfo->auth_data);
    heap_free(authinfo->scheme);
    heap_free(authinfo);
}
