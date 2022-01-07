
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int* data; } ;
struct TYPE_5__ {TYPE_1__ custdata_seg; } ;
typedef TYPE_2__ WMSFT_TLBFile ;
typedef int VARTYPE ;
typedef int VARIANT ;
typedef int HRESULT ;
typedef int DWORD ;


 int CP_ACP ;
 int ERR (char*,int ) ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*) ;
 int SysStringLen (int*) ;
 int* V_BSTR (int *) ;
 int V_UI4 (int *) ;
 int V_VT (int *) ;
 int VariantChangeType (int *,int *,int ,int) ;
 int WideCharToMultiByte (int ,int ,int*,int,char*,int,int *,int *) ;
 void* heap_alloc (int) ;
 void* heap_realloc (int*,int ) ;

__attribute__((used)) static DWORD WMSFT_encode_variant(VARIANT *value, WMSFT_TLBFile *file)
{
    VARIANT v = *value;
    VARTYPE arg_type = V_VT(value);
    int mask = 0;
    HRESULT hres;
    DWORD ret = file->custdata_seg.len;

    if(arg_type == 134)
        arg_type = 135;
    if(arg_type == 128)
        arg_type = 129;

    v = *value;
    if(V_VT(value) != arg_type) {
        hres = VariantChangeType(&v, value, 0, arg_type);
        if(FAILED(hres)){
            ERR("VariantChangeType failed: %08x\n", hres);
            return -1;
        }
    }


    switch(arg_type){
    case 135:
    case 129:
        mask = 0x3ffffff;
        if(V_UI4(&v) > 0x3ffffff)
            break;

    case 137:
    case 131:
    case 140:
        if(!mask)
            mask = 0xff;

    case 136:
    case 130:
        if(!mask)
            mask = 0xffff;
        return ((0x80 + 0x4 * V_VT(value)) << 24) | (V_UI4(&v) & mask);
    }


    switch(arg_type) {
    case 135:
    case 132:
    case 129:
    case 134:
    case 128:
    case 138:
    case 133: {

        int *data;

        if(file->custdata_seg.data){
            file->custdata_seg.data = heap_realloc(file->custdata_seg.data, file->custdata_seg.len + sizeof(int) * 2);
            data = (int *)(((char *)file->custdata_seg.data) + file->custdata_seg.len);
            file->custdata_seg.len += sizeof(int) * 2;
        }else{
            file->custdata_seg.len = sizeof(int) * 2;
            data = file->custdata_seg.data = heap_alloc(file->custdata_seg.len);
        }

        data[0] = V_VT(value) + (V_UI4(&v) << 16);
        data[1] = (V_UI4(&v) >> 16) + 0x57570000;



        return ret;
    }

    case 139: {
        int i, len = (6+SysStringLen(V_BSTR(&v))+3) & ~0x3;
        char *data;

        if(file->custdata_seg.data){
            file->custdata_seg.data = heap_realloc(file->custdata_seg.data, file->custdata_seg.len + len);
            data = ((char *)file->custdata_seg.data) + file->custdata_seg.len;
            file->custdata_seg.len += len;
        }else{
            file->custdata_seg.len = len;
            data = file->custdata_seg.data = heap_alloc(file->custdata_seg.len);
        }

        *((unsigned short *)data) = V_VT(value);
        *((unsigned int *)(data+2)) = SysStringLen(V_BSTR(&v));
        for(i=0; i<SysStringLen(V_BSTR(&v)); i++) {
            if(V_BSTR(&v)[i] <= 0x7f)
                data[i+6] = V_BSTR(&v)[i];
            else
                data[i+6] = '?';
        }
        WideCharToMultiByte(CP_ACP, 0, V_BSTR(&v), SysStringLen(V_BSTR(&v)), &data[6], len-6, ((void*)0), ((void*)0));
        for(i=6+SysStringLen(V_BSTR(&v)); i<len; i++)
            data[i] = 0x57;



        return ret;
    }
    default:
        FIXME("Argument type not yet handled\n");
        return -1;
    }
}
