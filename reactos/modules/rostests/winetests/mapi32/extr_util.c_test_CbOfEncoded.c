
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff ;
typedef scalar_t__ ULONG ;


 int memset (char*,char,unsigned int) ;
 int ok (int,char*,unsigned int,scalar_t__,scalar_t__) ;
 scalar_t__ pCbOfEncoded (char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_CbOfEncoded(void)
{
    char buff[129];
    unsigned int i;

    if (!pCbOfEncoded)
    {
        win_skip("CbOfEncoded is not available\n");
        return;
    }

    for (i = 0; i < sizeof(buff) - 1; i++)
    {
        ULONG ulRet, ulExpected = (((i | 3) >> 2) + 1) * 3;

        memset(buff, '\0', sizeof(buff));
        memset(buff, '?', i);
        ulRet = pCbOfEncoded(buff);
        ok(ulRet == ulExpected,
           "CbOfEncoded(length %d): expected %d, got %d\n",
           i, ulExpected, ulRet);
    }
}
