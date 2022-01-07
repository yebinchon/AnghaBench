
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int attr ;
typedef char WCHAR ;
typedef int UNICODE_STRING ;
struct TYPE_3__ {int Length; void* RootDirectory; int * SecurityQualityOfService; int * SecurityDescriptor; scalar_t__ Attributes; int * ObjectName; } ;
typedef TYPE_1__ OBJECT_ATTRIBUTES ;
typedef void* HANDLE ;


 int KEY_ALL_ACCESS ;
 int NtClose (void*) ;
 scalar_t__ NtCreateKey (void**,int ,TYPE_1__*,int ,int *,int ,int *) ;
 int RtlInitUnicodeString (int *,char const*) ;
 scalar_t__ RtlOpenCurrentUser (int ,void**) ;
 scalar_t__ STATUS_SUCCESS ;

__attribute__((used)) static inline HANDLE create_registry_key(void)
{
    static const WCHAR cplW[] = {'C','o','n','t','r','o','l',' ','P','a','n','e','l',0};
    static const WCHAR intlW[] = {'I','n','t','e','r','n','a','t','i','o','n','a','l',0};
    OBJECT_ATTRIBUTES attr;
    UNICODE_STRING nameW;
    HANDLE cpl_key, hkey = 0;

    if (RtlOpenCurrentUser( KEY_ALL_ACCESS, &hkey ) != STATUS_SUCCESS) return 0;

    attr.Length = sizeof(attr);
    attr.RootDirectory = hkey;
    attr.ObjectName = &nameW;
    attr.Attributes = 0;
    attr.SecurityDescriptor = ((void*)0);
    attr.SecurityQualityOfService = ((void*)0);
    RtlInitUnicodeString( &nameW, cplW );

    if (!NtCreateKey( &cpl_key, KEY_ALL_ACCESS, &attr, 0, ((void*)0), 0, ((void*)0) ))
    {
        NtClose( attr.RootDirectory );
        attr.RootDirectory = cpl_key;
        RtlInitUnicodeString( &nameW, intlW );
        if (NtCreateKey( &hkey, KEY_ALL_ACCESS, &attr, 0, ((void*)0), 0, ((void*)0) )) hkey = 0;
    }
    NtClose( attr.RootDirectory );
    return hkey;
}
