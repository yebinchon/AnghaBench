
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int BOOL ;


 int CP_ACP ;
 scalar_t__ FALSE ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 scalar_t__ TRUE ;
 int expect_LayerValue (int ,char const*,char*) ;
 int ok (int,char*) ;
 scalar_t__ pSdbSetPermLayerKeys (int *,int *,int ) ;
 int wrapSdbSetPermLayerKeys (int *,char*,int ) ;

__attribute__((used)) static void test_SdbSetPermLayerKeysLevel(BOOL bMachine, const char* file)
{
    WCHAR fileW[MAX_PATH+20];
    WCHAR emptyString[1] = { 0 };

    MultiByteToWideChar(CP_ACP, 0, file, -1, fileW, MAX_PATH+20);


    ok(pSdbSetPermLayerKeys(((void*)0), ((void*)0), bMachine) == FALSE, "Expected SdbSetPermLayerKeys to fail\n");
    ok(pSdbSetPermLayerKeys(((void*)0), emptyString, bMachine) == FALSE, "Expected SdbSetPermLayerKeys to fail\n");
    ok(pSdbSetPermLayerKeys(emptyString, emptyString, bMachine) == FALSE, "Expected SdbSetPermLayerKeys to fail\n");
    ok(pSdbSetPermLayerKeys(fileW, ((void*)0), bMachine) == TRUE, "Expected SdbSetPermLayerKeys to succeed\n");
    ok(pSdbSetPermLayerKeys(fileW, emptyString, bMachine) == TRUE, "Expected SdbSetPermLayerKeys to fail\n");


    ok(wrapSdbSetPermLayerKeys(fileW, "TEST1", bMachine), "Expected SdbSetPermLayerKeys to succeed\n");
    expect_LayerValue(bMachine, file, "TEST1");

    ok(wrapSdbSetPermLayerKeys(fileW, "TEST1 TEST2", bMachine), "Expected SdbSetPermLayerKeys to succeed\n");
    expect_LayerValue(bMachine, file, "TEST1 TEST2");


    ok(wrapSdbSetPermLayerKeys(fileW, "!#$% TEST1 TEST2", bMachine), "Expected SdbSetPermLayerKeys to succeed\n");
    expect_LayerValue(bMachine, file, "!#$% TEST1 TEST2");

    ok(wrapSdbSetPermLayerKeys(fileW, "!#$% TEST1     TEST2", bMachine), "Expected SdbSetPermLayerKeys to succeed\n");
    expect_LayerValue(bMachine, file, "!#$% TEST1     TEST2");

    ok(pSdbSetPermLayerKeys(fileW, ((void*)0), bMachine) == TRUE, "Expected SdbSetPermLayerKeys to succeed\n");
    expect_LayerValue(bMachine, file, ((void*)0));

    ok(wrapSdbSetPermLayerKeys(fileW, " ", bMachine), "Expected SdbSetPermLayerKeys to succeed\n");
    expect_LayerValue(bMachine, file, " ");

    ok(pSdbSetPermLayerKeys(fileW, ((void*)0), bMachine) == TRUE, "Expected SdbSetPermLayerKeys to fail\n");
    expect_LayerValue(bMachine, file, ((void*)0));
}
