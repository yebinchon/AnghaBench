
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int class; } ;
typedef int WCHAR ;
typedef int IWbemClassObject ;
typedef int IEnumWbemClassObject ;
typedef scalar_t__ HRESULT ;


 int IEnumWbemClassObject_Release (int *) ;
 scalar_t__ S_OK ;
 scalar_t__ create_class_object (int ,int *,int ,int *,int **) ;
 scalar_t__ create_instance_enum (struct path*,int **) ;
 int free_path (struct path*) ;
 scalar_t__ parse_path (int const*,struct path**) ;

HRESULT get_object( const WCHAR *object_path, IWbemClassObject **obj )
{
    IEnumWbemClassObject *iter;
    struct path *path;
    HRESULT hr;

    hr = parse_path( object_path, &path );
    if (hr != S_OK) return hr;

    hr = create_instance_enum( path, &iter );
    if (hr != S_OK)
    {
        free_path( path );
        return hr;
    }
    hr = create_class_object( path->class, iter, 0, ((void*)0), obj );
    IEnumWbemClassObject_Release( iter );
    free_path( path );
    return hr;
}
