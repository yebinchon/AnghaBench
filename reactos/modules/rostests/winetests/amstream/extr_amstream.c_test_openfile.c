
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IGraphBuilder ;
typedef int IAMMultiMediaStream ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IAMMultiMediaStream_GetFilterGraph (int *,int **) ;
 scalar_t__ IAMMultiMediaStream_OpenFile (int *,int ,int ) ;
 int IAMMultiMediaStream_Release (int *) ;
 int IGraphBuilder_Release (int *) ;
 scalar_t__ S_OK ;
 int * create_ammultimediastream () ;
 int filenameW ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_openfile(void)
{
    IAMMultiMediaStream *pams;
    HRESULT hr;
    IGraphBuilder* pgraph;

    if (!(pams = create_ammultimediastream()))
        return;

    hr = IAMMultiMediaStream_GetFilterGraph(pams, &pgraph);
    ok(hr==S_OK, "IAMMultiMediaStream_GetFilterGraph returned: %x\n", hr);
    ok(pgraph==((void*)0), "Filtergraph should not be created yet\n");

    if (pgraph)
        IGraphBuilder_Release(pgraph);

    hr = IAMMultiMediaStream_OpenFile(pams, filenameW, 0);
    ok(hr==S_OK, "IAMMultiMediaStream_OpenFile returned: %x\n", hr);

    hr = IAMMultiMediaStream_GetFilterGraph(pams, &pgraph);
    ok(hr==S_OK, "IAMMultiMediaStream_GetFilterGraph returned: %x\n", hr);
    ok(pgraph!=((void*)0), "Filtergraph should be created\n");

    if (pgraph)
        IGraphBuilder_Release(pgraph);

    IAMMultiMediaStream_Release(pams);
}
