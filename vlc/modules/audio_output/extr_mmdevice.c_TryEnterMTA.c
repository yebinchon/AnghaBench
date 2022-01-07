
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int HRESULT ;


 int COINIT_MULTITHREADED ;
 int CoInitializeEx (int *,int ) ;
 int FAILED (int ) ;
 int msg_Err (int *,char*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int TryEnterMTA(vlc_object_t *obj)
{
    HRESULT hr = CoInitializeEx(((void*)0), COINIT_MULTITHREADED);
    if (unlikely(FAILED(hr)))
    {
        msg_Err (obj, "cannot initialize COM (error 0x%lX)", hr);
        return -1;
    }
    return 0;
}
