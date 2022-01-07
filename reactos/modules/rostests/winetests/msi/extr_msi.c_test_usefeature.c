
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ INSTALLSTATE ;


 scalar_t__ INSTALLSTATE_INVALIDARG ;
 scalar_t__ MsiQueryFeatureStateA (char*,int *) ;
 int ok (int,char*) ;
 scalar_t__ pMsiUseFeatureExA (char*,char*,int,int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_usefeature(void)
{
    INSTALLSTATE r;

    if (!pMsiUseFeatureExA)
    {
        win_skip("MsiUseFeatureExA not implemented\n");
        return;
    }

    r = MsiQueryFeatureStateA(((void*)0), ((void*)0));
    ok( r == INSTALLSTATE_INVALIDARG, "wrong return val\n");

    r = MsiQueryFeatureStateA("{9085040-6000-11d3-8cfe-0150048383c9}" ,((void*)0));
    ok( r == INSTALLSTATE_INVALIDARG, "wrong return val\n");

    r = pMsiUseFeatureExA(((void*)0),((void*)0),0,0);
    ok( r == INSTALLSTATE_INVALIDARG, "wrong return val\n");

    r = pMsiUseFeatureExA(((void*)0), "WORDVIEWFiles", -2, 1 );
    ok( r == INSTALLSTATE_INVALIDARG, "wrong return val\n");

    r = pMsiUseFeatureExA("{90850409-6000-11d3-8cfe-0150048383c9}",
                         ((void*)0), -2, 0 );
    ok( r == INSTALLSTATE_INVALIDARG, "wrong return val\n");

    r = pMsiUseFeatureExA("{9085040-6000-11d3-8cfe-0150048383c9}",
                         "WORDVIEWFiles", -2, 0 );
    ok( r == INSTALLSTATE_INVALIDARG, "wrong return val\n");

    r = pMsiUseFeatureExA("{0085040-6000-11d3-8cfe-0150048383c9}",
                         "WORDVIEWFiles", -2, 0 );
    ok( r == INSTALLSTATE_INVALIDARG, "wrong return val\n");

    r = pMsiUseFeatureExA("{90850409-6000-11d3-8cfe-0150048383c9}",
                         "WORDVIEWFiles", -2, 1 );
    ok( r == INSTALLSTATE_INVALIDARG, "wrong return val\n");
}
