
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int HANDLE ;
typedef int DWORD ;


 int GetUserObjectInformationA (int ,int ,char*,int,int *) ;
 int UOI_NAME ;
 int UOI_TYPE ;
 int strcpy (char*,char*) ;
 int trace (char*,int ,...) ;

__attribute__((used)) static void print_object( HANDLE obj )
{
    char buffer[100];
    DWORD size;

    strcpy( buffer, "foobar" );
    if (!GetUserObjectInformationA( obj, UOI_NAME, buffer, sizeof(buffer), &size ))
        trace( "could not get info for %p\n", obj );
    else
        trace( "obj %p name '%s'\n", obj, buffer );
    strcpy( buffer, "foobar" );
    if (!GetUserObjectInformationA( obj, UOI_TYPE, buffer, sizeof(buffer), &size ))
        trace( "could not get type for %p\n", obj );
    else
        trace( "obj %p type '%s'\n", obj, buffer );
}
