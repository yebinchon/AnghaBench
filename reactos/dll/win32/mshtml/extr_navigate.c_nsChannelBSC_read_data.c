
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsChannelBSC ;
typedef int IStream ;
typedef int HRESULT ;
typedef int BSCallback ;


 int * nsChannelBSC_from_BSCallback (int *) ;
 int read_stream_data (int *,int *) ;

__attribute__((used)) static HRESULT nsChannelBSC_read_data(BSCallback *bsc, IStream *stream)
{
    nsChannelBSC *This = nsChannelBSC_from_BSCallback(bsc);

    return read_stream_data(This, stream);
}
