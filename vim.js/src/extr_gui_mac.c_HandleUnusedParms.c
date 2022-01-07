
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int missedKeyword ;
typedef int Ptr ;
typedef scalar_t__ OSErr ;
typedef int DescType ;
typedef int AppleEvent ;
typedef int AEKeyword ;


 scalar_t__ AEGetAttributePtr (int const*,int ,int ,int *,int ,int,long*) ;
 scalar_t__ errAEDescNotFound ;
 scalar_t__ errAEEventNotHandled ;
 int keyMissedKeywordAttr ;
 scalar_t__ noErr ;
 int typeKeyword ;

OSErr
HandleUnusedParms(const AppleEvent *theAEvent)
{
    OSErr error;
    long actualSize;
    DescType dummyType;
    AEKeyword missedKeyword;


    error = AEGetAttributePtr(theAEvent, keyMissedKeywordAttr,
         typeKeyword, &dummyType,
         (Ptr)&missedKeyword, sizeof(missedKeyword),
         &actualSize);


    if (error == errAEDescNotFound)
    {
 error = noErr;
    }
    else
    {




    }

    return error;
}
