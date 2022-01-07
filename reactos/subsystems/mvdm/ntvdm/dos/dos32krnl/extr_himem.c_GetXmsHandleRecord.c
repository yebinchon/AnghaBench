
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_4__ {scalar_t__ Size; } ;
typedef TYPE_1__* PXMS_HANDLE ;


 TYPE_1__* HandleTable ;
 int XMS_MAX_HANDLES ;

__attribute__((used)) static inline PXMS_HANDLE GetXmsHandleRecord(WORD Handle)
{
    PXMS_HANDLE Entry;
    if (Handle == 0 || Handle >= XMS_MAX_HANDLES) return ((void*)0);

    Entry = &HandleTable[Handle - 1];
    return Entry->Size ? Entry : ((void*)0);
}
