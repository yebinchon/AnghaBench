
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ cbData; int * pbData; } ;
struct TYPE_8__ {void* cbData; void* pbData; } ;
typedef scalar_t__ LONG ;
typedef TYPE_1__ DATA_BLOB ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_IO_PENDING ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 int SetLastError (int) ;
 scalar_t__ broken (int) ;
 TYPE_4__ cipher ;
 TYPE_4__ cipher_entropy ;
 TYPE_4__ cipher_no_desc ;
 int * desc ;
 scalar_t__ key ;
 int ok (int,char*,...) ;
 scalar_t__ pCryptProtectData (TYPE_1__*,int *,TYPE_1__*,int *,int *,int ,TYPE_4__*) ;
 scalar_t__ protected ;
 scalar_t__ secret ;
 scalar_t__ secret2 ;
 void* strlen (scalar_t__) ;

__attribute__((used)) static void test_cryptprotectdata(void)
{
    LONG r;
    DATA_BLOB plain;
    DATA_BLOB entropy;

    plain.pbData=(void*)secret;
    plain.cbData=strlen(secret)+1;

    entropy.pbData=(void*)key;
    entropy.cbData=strlen(key)+1;

    SetLastError(0xDEADBEEF);
    protected = pCryptProtectData(((void*)0),desc,((void*)0),((void*)0),((void*)0),0,&cipher);
    ok(!protected, "Encrypting without plain data source.\n");
    r = GetLastError();
    ok(r == ERROR_INVALID_PARAMETER, "Wrong (%u) GetLastError seen\n",r);

    SetLastError(0xDEADBEEF);
    protected = pCryptProtectData(&plain,desc,((void*)0),((void*)0),((void*)0),0,((void*)0));
    ok(!protected, "Encrypting without cipher destination.\n");
    r = GetLastError();
    ok(r == ERROR_INVALID_PARAMETER, "Wrong (%u) GetLastError seen\n",r);

    cipher.pbData=((void*)0);
    cipher.cbData=0;


    SetLastError(0xDEADBEEF);
    protected = pCryptProtectData(&plain,desc,((void*)0),((void*)0),((void*)0),0,&cipher);
    ok(protected ||
     broken(!protected),
     "Encrypting without entropy.\n");
    if (protected)
    {
        r = GetLastError();
        ok(r == ERROR_SUCCESS ||
           r == ERROR_IO_PENDING,
           "Expected ERROR_SUCCESS or ERROR_IO_PENDING, got %d\n",r);
    }

    cipher_entropy.pbData=((void*)0);
    cipher_entropy.cbData=0;


    SetLastError(0xDEADBEEF);
    protected = pCryptProtectData(&plain,desc,&entropy,((void*)0),((void*)0),0,&cipher_entropy);
    ok(protected ||
     broken(!protected),
     "Encrypting with entropy.\n");

    cipher_no_desc.pbData=((void*)0);
    cipher_no_desc.cbData=0;


    plain.pbData=(void*)secret2;
    plain.cbData=strlen(secret2)+1;
    SetLastError(0xDEADBEEF);
    protected = pCryptProtectData(&plain,((void*)0),&entropy,((void*)0),((void*)0),0,&cipher_no_desc);
    if (!protected)
    {

        ok(GetLastError() == ERROR_INVALID_PARAMETER,
           "Expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());
    }
}
