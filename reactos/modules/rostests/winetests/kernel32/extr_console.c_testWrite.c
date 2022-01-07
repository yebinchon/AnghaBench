
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int COORD ;


 int FALSE ;
 int SetConsoleTextAttribute (int ,int ) ;
 int TEST_ATTRIB ;
 int ok (int ,char*) ;
 int resetContent (int ,int ,int ) ;
 int testEmptyWrite (int ) ;
 int testWriteNotWrappedNotProcessed (int ,int ) ;
 int testWriteNotWrappedProcessed (int ,int ) ;
 int testWriteSimple (int ) ;
 int testWriteWrappedNotProcessed (int ,int ) ;
 int testWriteWrappedProcessed (int ,int ) ;

__attribute__((used)) static void testWrite(HANDLE hCon, COORD sbSize)
{

    ok(SetConsoleTextAttribute(hCon, TEST_ATTRIB), "Setting default text color\n");
    resetContent(hCon, sbSize, FALSE);
    testEmptyWrite(hCon);
    resetContent(hCon, sbSize, FALSE);
    testWriteSimple(hCon);
    resetContent(hCon, sbSize, FALSE);
    testWriteNotWrappedNotProcessed(hCon, sbSize);
    resetContent(hCon, sbSize, FALSE);
    testWriteNotWrappedProcessed(hCon, sbSize);
    resetContent(hCon, sbSize, FALSE);
    testWriteWrappedNotProcessed(hCon, sbSize);
    resetContent(hCon, sbSize, FALSE);
    testWriteWrappedProcessed(hCon, sbSize);
}
