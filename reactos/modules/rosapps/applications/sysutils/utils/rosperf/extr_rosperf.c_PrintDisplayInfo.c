
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HDC ;


 int BITSPIXEL ;
 int * GetDC (int *) ;
 int GetDeviceCaps (int *,int ) ;
 int HORZRES ;
 int PLANES ;
 int ReleaseDC (int *,int *) ;
 int VERTRES ;
 int wprintf (char*,int,int,int) ;

__attribute__((used)) static void
PrintDisplayInfo(void)
{
  HDC Dc;

  Dc = GetDC(((void*)0));
  if (((void*)0) == Dc)
    {
      return;
    }

  wprintf(L"Display settings %d * %d * %d\n", GetDeviceCaps(Dc, HORZRES),
          GetDeviceCaps(Dc, VERTRES), GetDeviceCaps(Dc, BITSPIXEL) * GetDeviceCaps(Dc, PLANES));

  ReleaseDC(((void*)0), Dc);
}
