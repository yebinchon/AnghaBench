
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int REFIID ;
typedef int IUnknown ;


 int ERR (char*) ;
 int LOWORD (int) ;
 int TRACE (char*,int) ;
 int WdtpInterfacePointer_UserSize (int*,int ,int ,int *,int ) ;

__attribute__((used)) static unsigned interface_variant_size(ULONG *pFlags, REFIID riid, IUnknown *punk)
{
    ULONG size = 0;

    if (punk)
    {
        size = WdtpInterfacePointer_UserSize(pFlags, LOWORD(*pFlags), 0, punk, riid);
        if (!size)
        {
            ERR("interface variant buffer size calculation failed\n");
            return 0;
        }
    }
    size += sizeof(ULONG);
    TRACE("wire-size extra of interface variant is %d\n", size);
    return size;
}
