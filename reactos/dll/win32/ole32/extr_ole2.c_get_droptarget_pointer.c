
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IStream ;
typedef int IDropTarget ;
typedef int HWND ;
typedef int HANDLE ;


 int CloseHandle (int ) ;
 int CoUnmarshalInterface (int *,int *,void**) ;
 int IID_IDropTarget ;
 int IStream_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int create_stream_from_map (int ,int **) ;
 int get_droptarget_local_handle (int ) ;

__attribute__((used)) static IDropTarget* get_droptarget_pointer(HWND hwnd)
{
    IDropTarget *droptarget = ((void*)0);
    HANDLE map;
    IStream *stream;

    map = get_droptarget_local_handle(hwnd);
    if(!map) return ((void*)0);

    if(SUCCEEDED(create_stream_from_map(map, &stream)))
    {
        CoUnmarshalInterface(stream, &IID_IDropTarget, (void**)&droptarget);
        IStream_Release(stream);
    }
    CloseHandle(map);
    return droptarget;
}
