
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BYTE ;


 int LEN ;
 int ok (int,char*,int) ;
 int pRtlComputeCrc32 (int,int const*,int ) ;
 scalar_t__ src ;
 int win_skip (char*) ;

__attribute__((used)) static void test_RtlComputeCrc32(void)
{
  DWORD crc = 0;

  if (!pRtlComputeCrc32)
  {
    win_skip("RtlComputeCrc32 is not available\n");
    return;
  }

  crc = pRtlComputeCrc32(crc, (const BYTE *)src, LEN);
  ok(crc == 0x40861dc2,"Expected 0x40861dc2, got %8x\n", crc);
}
