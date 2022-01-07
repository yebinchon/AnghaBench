
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_8__ {char* pbData; scalar_t__ cbData; } ;
typedef scalar_t__ LONG ;
typedef TYPE_1__ DATA_BLOB ;
typedef int BOOL ;


 scalar_t__ ERROR_INVALID_DATA ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ GetLastError () ;
 int LocalFree (char*) ;
 int SetLastError (int) ;
 TYPE_1__ cipher ;
 TYPE_1__ cipher_entropy ;
 TYPE_1__ cipher_no_desc ;
 int desc ;
 scalar_t__ key ;
 int lstrcmpW (char*,int ) ;
 int ok (int,char*,...) ;
 int pCryptUnprotectData (TYPE_1__*,char**,TYPE_1__*,int *,int *,int ,TYPE_1__*) ;
 int protected ;
 scalar_t__ secret ;
 scalar_t__ secret2 ;
 int skip (char*) ;
 int strcmp (char const*,scalar_t__) ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static void test_cryptunprotectdata(void)
{
    LONG r;
    DATA_BLOB plain;
    DATA_BLOB entropy;
    BOOL okay;
    WCHAR * data_desc;

    entropy.pbData=(void*)key;
    entropy.cbData=strlen(key)+1;


    if (!protected)
    {
        skip("CryptProtectData failed to run\n");
        return;
    }

    plain.pbData=((void*)0);
    plain.cbData=0;

    SetLastError(0xDEADBEEF);
    okay = pCryptUnprotectData(&cipher,((void*)0),((void*)0),((void*)0),((void*)0),0,((void*)0));
    ok(!okay,"Decrypting without destination\n");
    r = GetLastError();
    ok(r == ERROR_INVALID_PARAMETER, "Wrong (%u) GetLastError seen\n",r);

    SetLastError(0xDEADBEEF);
    okay = pCryptUnprotectData(((void*)0),((void*)0),((void*)0),((void*)0),((void*)0),0,&plain);
    ok(!okay,"Decrypting without source\n");
    r = GetLastError();
    ok(r == ERROR_INVALID_PARAMETER, "Wrong (%u) GetLastError seen\n",r);

    plain.pbData=((void*)0);
    plain.cbData=0;

    SetLastError(0xDEADBEEF);
    okay = pCryptUnprotectData(&cipher_entropy,((void*)0),((void*)0),((void*)0),((void*)0),0,&plain);
    ok(!okay,"Decrypting without needed entropy\n");
    r = GetLastError();
    ok(r == ERROR_INVALID_DATA, "Wrong (%u) GetLastError seen\n", r);

    plain.pbData=((void*)0);
    plain.cbData=0;
    data_desc=((void*)0);


    SetLastError(0xDEADBEEF);
    okay = pCryptUnprotectData(&cipher,&data_desc,((void*)0),((void*)0),((void*)0),0,&plain);
    ok(okay,"Decrypting without entropy\n");

    ok(plain.pbData!=((void*)0),"Plain DATA_BLOB missing data\n");
    ok(plain.cbData==strlen(secret)+1,"Plain DATA_BLOB wrong length\n");
    ok(!strcmp((const char*)plain.pbData,secret),"Plain does not match secret\n");
    ok(data_desc!=((void*)0),"Description not allocated\n");
    ok(!lstrcmpW(data_desc,desc),"Description does not match\n");

    LocalFree(plain.pbData);
    LocalFree(data_desc);

    plain.pbData=((void*)0);
    plain.cbData=0;
    data_desc=((void*)0);


    SetLastError(0xDEADBEEF);
    okay = pCryptUnprotectData(&cipher_entropy,&data_desc,&cipher_entropy,((void*)0),((void*)0),0,&plain);
    ok(!okay,"Decrypting with wrong entropy\n");
    r = GetLastError();
    ok(r == ERROR_INVALID_DATA, "Wrong (%u) GetLastError seen\n",r);


    SetLastError(0xDEADBEEF);
    okay = pCryptUnprotectData(&cipher_entropy,&data_desc,&entropy,((void*)0),((void*)0),0,&plain);
    ok(okay,"Decrypting with entropy\n");

    ok(plain.pbData!=((void*)0),"Plain DATA_BLOB missing data\n");
    ok(plain.cbData==strlen(secret)+1,"Plain DATA_BLOB wrong length\n");
    ok(!strcmp((const char*)plain.pbData,secret),"Plain does not match secret\n");
    ok(data_desc!=((void*)0),"Description not allocated\n");
    ok(!lstrcmpW(data_desc,desc),"Description does not match\n");

    LocalFree(plain.pbData);
    LocalFree(data_desc);

    plain.pbData=((void*)0);
    plain.cbData=0;
    data_desc=((void*)0);


    SetLastError(0xDEADBEEF);
    okay = pCryptUnprotectData(&cipher_no_desc,&data_desc,&entropy,((void*)0),((void*)0),0,&plain);
    ok(okay,"Decrypting with entropy and no description\n");

    ok(plain.pbData!=((void*)0),"Plain DATA_BLOB missing data\n");
    ok(plain.cbData==strlen(secret2)+1,"Plain DATA_BLOB wrong length\n");
    ok(!strcmp((const char*)plain.pbData,secret2),"Plain does not match secret\n");
    ok(data_desc!=((void*)0),"Description not allocated\n");
    ok(data_desc[0]=='\0',"Description not empty\n");

    LocalFree(data_desc);
    LocalFree(plain.pbData);

    plain.pbData=((void*)0);
    plain.cbData=0;
}
