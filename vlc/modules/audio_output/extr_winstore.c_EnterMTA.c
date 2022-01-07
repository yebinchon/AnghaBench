
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;


 int COINIT_MULTITHREADED ;
 int CoInitializeEx (int *,int ) ;
 int FAILED (int ) ;
 int abort () ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void EnterMTA(void)
{
    HRESULT hr = CoInitializeEx(((void*)0), COINIT_MULTITHREADED);
    if (unlikely(FAILED(hr)))
        abort();
}
