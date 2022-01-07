
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rsa; } ;
typedef TYPE_1__ KEY_CONTEXT ;
typedef int BOOL ;
typedef int ALG_ID ;




 int TRUE ;
 int rsa_free (int *) ;

BOOL free_key_impl(ALG_ID aiAlgid, KEY_CONTEXT *pKeyContext)
{
    switch (aiAlgid)
    {
        case 129:
        case 128:
            rsa_free(&pKeyContext->rsa);
    }

    return TRUE;
}
