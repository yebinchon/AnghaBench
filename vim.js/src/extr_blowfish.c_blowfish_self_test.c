
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMSG (int ) ;
 scalar_t__ FAIL ;
 int OK ;
 int _ (char*) ;
 scalar_t__ bf_self_test () ;
 scalar_t__ sha256_self_test () ;

int
blowfish_self_test()
{
    if (sha256_self_test() == FAIL)
    {
 EMSG(_("E818: sha256 test failed"));
 return FAIL;
    }
    if (bf_self_test() == FAIL)
    {
 EMSG(_("E819: Blowfish test failed"));
 return FAIL;
    }
    return OK;
}
