
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IAMMultiMediaStream ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_AMMultiMediaStream ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int IID_IAMMultiMediaStream ;

__attribute__((used)) static IAMMultiMediaStream *create_ammultimediastream(void)
{
    IAMMultiMediaStream *stream = ((void*)0);
    CoCreateInstance(&CLSID_AMMultiMediaStream, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IAMMultiMediaStream,
        (void**)&stream);
    return stream;
}
