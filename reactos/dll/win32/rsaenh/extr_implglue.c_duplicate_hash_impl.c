
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HASH_CONTEXT ;
typedef int BOOL ;
typedef int ALG_ID ;


 int TRUE ;

BOOL duplicate_hash_impl(ALG_ID aiAlgid, const HASH_CONTEXT *pSrcHashContext,
                         HASH_CONTEXT *pDestHashContext)
{
    *pDestHashContext = *pSrcHashContext;

    return TRUE;
}
