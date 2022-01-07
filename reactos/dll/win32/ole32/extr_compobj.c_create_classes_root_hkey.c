
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int attr ;
struct TYPE_5__ {int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
struct TYPE_6__ {int Length; TYPE_1__* ObjectName; int * SecurityQualityOfService; int * SecurityDescriptor; scalar_t__ Attributes; scalar_t__ RootDirectory; } ;
typedef TYPE_2__ OBJECT_ATTRIBUTES ;
typedef int HKEY ;
typedef int DWORD ;


 int InterlockedCompareExchangePointer (void**,int ,int ) ;
 int KEY_WOW64_64KEY ;
 int NtClose (int ) ;
 int RtlInitUnicodeString (TYPE_1__*,int ) ;
 int TRACE (char*,int ,int ) ;
 int classes_rootW ;
 int classes_root_hkey ;
 scalar_t__ create_key (int *,int,TYPE_2__*) ;
 int debugstr_w (int ) ;

__attribute__((used)) static HKEY create_classes_root_hkey(DWORD access)
{
    HKEY hkey, ret = 0;
    OBJECT_ATTRIBUTES attr;
    UNICODE_STRING name;

    attr.Length = sizeof(attr);
    attr.RootDirectory = 0;
    attr.ObjectName = &name;
    attr.Attributes = 0;
    attr.SecurityDescriptor = ((void*)0);
    attr.SecurityQualityOfService = ((void*)0);
    RtlInitUnicodeString( &name, classes_rootW );
    if (create_key( &hkey, access, &attr )) return 0;
    TRACE( "%s -> %p\n", debugstr_w(attr.ObjectName->Buffer), hkey );

    if (!(access & KEY_WOW64_64KEY))
    {
        if (!(ret = InterlockedCompareExchangePointer( (void **)&classes_root_hkey, hkey, 0 )))
            ret = hkey;
        else
            NtClose( hkey );
    }
    else
        ret = hkey;
    return ret;
}
