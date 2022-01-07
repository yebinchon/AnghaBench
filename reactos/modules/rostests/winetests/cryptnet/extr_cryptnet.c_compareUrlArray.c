
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cUrl; int * rgwszUrl; } ;
typedef size_t DWORD ;
typedef TYPE_1__ CRYPT_URL_ARRAY ;


 int lstrcmpiW (int ,int ) ;
 int ok (int,char*,size_t,...) ;

__attribute__((used)) static void compareUrlArray(const CRYPT_URL_ARRAY *expected,
 const CRYPT_URL_ARRAY *got)
{
    ok(expected->cUrl == got->cUrl, "Expected %d URLs, got %d\n",
     expected->cUrl, got->cUrl);
    if (expected->cUrl == got->cUrl)
    {
        DWORD i;

        for (i = 0; i < got->cUrl; i++)
            ok(!lstrcmpiW(expected->rgwszUrl[i], got->rgwszUrl[i]),
             "%d: unexpected URL\n", i);
    }
}
