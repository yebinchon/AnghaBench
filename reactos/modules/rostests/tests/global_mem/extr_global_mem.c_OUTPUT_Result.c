
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TEST_STATUS ;



 int OUTPUT_Line (char*) ;



void OUTPUT_Result(TEST_STATUS status)
{
    switch (status)
    {
    case 129: OUTPUT_Line("==> PASSED"); break;
    case 130: OUTPUT_Line("*** FAILED"); break;
    case 128: OUTPUT_Line("==> SKIPPED"); break;
    }
    OUTPUT_Line("");
}
