
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rsa; } ;
typedef TYPE_1__ KEY_CONTEXT ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;
typedef int ALG_ID ;




 int CRYPT_OK ;
 int FALSE ;
 int NTE_FAIL ;
 int SetLastError (int ) ;
 int TRUE ;
 int rsa_make_key (int,int,int *) ;

BOOL new_key_impl(ALG_ID aiAlgid, KEY_CONTEXT *pKeyContext, DWORD dwKeyLen)
{
    switch (aiAlgid)
    {
        case 129:
        case 128:
            if (rsa_make_key((int)dwKeyLen, 65537, &pKeyContext->rsa) != CRYPT_OK) {
                SetLastError(NTE_FAIL);
                return FALSE;
            }
            return TRUE;
    }

    return TRUE;
}
