
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * Buffer; scalar_t__ MaximumLength; scalar_t__ Length; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef scalar_t__ NTSTATUS ;


 int IID_Endianness ;
 int lstrcmpiW (int *,int ) ;
 int ok (int,char*,...) ;
 int pRtlFreeUnicodeString (TYPE_1__*) ;
 scalar_t__ pRtlStringFromGUID (int *,TYPE_1__*) ;
 int szGuid ;
 int win_skip (char*) ;

__attribute__((used)) static void test_RtlStringFromGUID(void)
{
  UNICODE_STRING str;
  NTSTATUS ret;

  if (!pRtlStringFromGUID)
  {
      win_skip("RtlStringFromGUID is not available\n");
      return;
  }

  str.Length = str.MaximumLength = 0;
  str.Buffer = ((void*)0);

  ret = pRtlStringFromGUID(&IID_Endianness, &str);
  ok(ret == 0, "expected ret=0, got 0x%0x\n", ret);
  ok(str.Buffer && !lstrcmpiW(str.Buffer, szGuid), "Endianness broken\n");
  pRtlFreeUnicodeString(&str);
}
