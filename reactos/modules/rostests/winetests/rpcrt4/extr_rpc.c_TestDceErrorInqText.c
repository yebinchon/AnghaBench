
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 int ARRAY_SIZE (char*) ;
 scalar_t__ DceErrorInqTextA (int,unsigned char*) ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 scalar_t__ FormatMessageA (int,int *,int ,int ,char*,int ,int *) ;
 int RPC_S_INVALID_STRING_UUID ;
 int RPC_S_NOT_RPC_ERROR ;
 scalar_t__ RPC_S_OK ;
 int ok (int,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void TestDceErrorInqText (void)
{
    char bufferInvalid [1024];
    char buffer [1024];


    DWORD dwCount;

    dwCount = FormatMessageA(FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS, ((void*)0),
            RPC_S_NOT_RPC_ERROR, 0, bufferInvalid, ARRAY_SIZE(bufferInvalid), ((void*)0));



    ok ((DceErrorInqTextA (0, (unsigned char*)buffer) == RPC_S_OK),
            "DceErrorInqTextA(0...)\n");

    ok ((DceErrorInqTextA (RPC_S_INVALID_STRING_UUID, (unsigned char*)buffer) == RPC_S_OK),
            "DceErrorInqTextA(valid...)\n");

    if (dwCount)
    {




        ok ((DceErrorInqTextA (35, (unsigned char*)buffer) == RPC_S_OK &&
                    strcmp (buffer, bufferInvalid) == 0),
                "DceErrorInqTextA(unformattable...)\n");




        ok ((DceErrorInqTextA (3814, (unsigned char*)buffer) == RPC_S_OK &&
                    strcmp (buffer, bufferInvalid) == 0),
                "DceErrorInqTextA(deviation...)\n");
    }
    else
        ok (0, "Cannot set up for DceErrorInqText\n");
}
