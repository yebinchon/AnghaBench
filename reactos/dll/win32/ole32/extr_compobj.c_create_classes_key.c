
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int attr ;
typedef int WCHAR ;
typedef int UNICODE_STRING ;
struct TYPE_3__ {int Length; int * SecurityQualityOfService; int * SecurityDescriptor; scalar_t__ Attributes; int * ObjectName; int RootDirectory; } ;
typedef int REGSAM ;
typedef TYPE_1__ OBJECT_ATTRIBUTES ;
typedef int LSTATUS ;
typedef int HKEY ;


 int ERROR_INVALID_HANDLE ;
 int RtlInitUnicodeString (int *,int const*) ;
 int RtlNtStatusToDosError (int ) ;
 int create_key (int *,int ,TYPE_1__*) ;
 int get_classes_root_hkey (int ,int ) ;

LSTATUS create_classes_key( HKEY hkey, const WCHAR *name, REGSAM access, HKEY *retkey )
{
    OBJECT_ATTRIBUTES attr;
    UNICODE_STRING nameW;

    if (!(hkey = get_classes_root_hkey( hkey, access ))) return ERROR_INVALID_HANDLE;

    attr.Length = sizeof(attr);
    attr.RootDirectory = hkey;
    attr.ObjectName = &nameW;
    attr.Attributes = 0;
    attr.SecurityDescriptor = ((void*)0);
    attr.SecurityQualityOfService = ((void*)0);
    RtlInitUnicodeString( &nameW, name );

    return RtlNtStatusToDosError( create_key( retkey, access, &attr ) );
}
