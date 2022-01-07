
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t DWORD ;


 size_t ARRAY_SIZE (int *) ;
 int PKCS_UTC_TIME ;
 int X509_CHOICE_OF_TIME ;
 int szOID_RSA_signingTime ;
 int testTimeEncoding (size_t,int ,int *) ;
 int * times ;

__attribute__((used)) static void test_encodeFiletime(DWORD dwEncoding)
{
    DWORD i;

    for (i = 0; i < ARRAY_SIZE(times); i++)
    {
        testTimeEncoding(dwEncoding, X509_CHOICE_OF_TIME, &times[i]);
        testTimeEncoding(dwEncoding, PKCS_UTC_TIME, &times[i]);
        testTimeEncoding(dwEncoding, szOID_RSA_signingTime, &times[i]);
    }
}
