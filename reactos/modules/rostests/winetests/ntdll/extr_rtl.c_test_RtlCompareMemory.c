
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE_T ;


 int COMP (char*,char*,int ,int ) ;
 int LEN ;
 char* dest ;
 int pRtlCompareMemory ;
 char* src ;
 int strcpy (char*,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_RtlCompareMemory(void)
{
  SIZE_T size;

  if (!pRtlCompareMemory)
  {
    win_skip("RtlCompareMemory is not available\n");
    return;
  }

  strcpy(dest, src);

  COMP(src,src,0,0);
  COMP(src,src,LEN,LEN);
  dest[0] = 'x';
  COMP(src,dest,LEN,0);
}
