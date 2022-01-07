
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bom; scalar_t__ readed; } ;
typedef int IStream ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BYTE ;
typedef TYPE_1__ BSCallback ;


 scalar_t__ BOM_NONE ;
 scalar_t__ BOM_UTF16 ;
 scalar_t__ BOM_UTF8 ;
 int IStream_Read (int *,void*,int,int*) ;
 int memmove (int*,int*,int) ;

HRESULT read_stream(BSCallback *This, IStream *stream, void *buf, DWORD size, DWORD *ret_size)
{
    DWORD read_size = 0, skip=0;
    BYTE *data = buf;
    HRESULT hres;

    hres = IStream_Read(stream, buf, size, &read_size);

    if(!This->readed && This->bom == BOM_NONE) {
        if(read_size >= 2 && data[0] == 0xff && data[1] == 0xfe) {
            This->bom = BOM_UTF16;
            skip = 2;
        }else if(read_size >= 3 && data[0] == 0xef && data[1] == 0xbb && data[2] == 0xbf) {
            This->bom = BOM_UTF8;
            skip = 3;
        }
        if(skip) {
            read_size -= skip;
            if(read_size)
                memmove(data, data+skip, read_size);
        }
    }

    This->readed += read_size;
    *ret_size = read_size;
    return hres;
}
