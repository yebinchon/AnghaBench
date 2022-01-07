
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbdisp_t ;
typedef char WCHAR ;
typedef int VARIANT ;
typedef int HRESULT ;


 int E_NOTIMPL ;
 int FIXME (char*,int ) ;
 int TRACE (char*,int ) ;
 int V_VT (int *) ;
 int assert (int) ;
 int debugstr_variant (int *) ;
 int return_string (int *,char const*) ;

__attribute__((used)) static HRESULT Global_TypeName(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    static const WCHAR ByteW[] = {'B', 'y', 't', 'e', 0};
    static const WCHAR IntegerW[] = {'I', 'n', 't', 'e', 'g', 'e', 'r', 0};
    static const WCHAR LongW[] = {'L', 'o', 'n', 'g', 0};
    static const WCHAR SingleW[] = {'S', 'i', 'n', 'g', 'l', 'e', 0};
    static const WCHAR DoubleW[] = {'D', 'o', 'u', 'b', 'l', 'e', 0};
    static const WCHAR CurrencyW[] = {'C', 'u', 'r', 'r', 'e', 'n', 'c', 'y', 0};
    static const WCHAR DecimalW[] = {'D', 'e', 'c', 'i', 'm', 'a', 'l', 0};
    static const WCHAR DateW[] = {'D', 'a', 't', 'e', 0};
    static const WCHAR StringW[] = {'S', 't', 'r', 'i', 'n', 'g', 0};
    static const WCHAR BooleanW[] = {'B', 'o', 'o', 'l', 'e', 'a', 'n', 0};
    static const WCHAR EmptyW[] = {'E', 'm', 'p', 't', 'y', 0};
    static const WCHAR NullW[] = {'N', 'u', 'l', 'l', 0};

    TRACE("(%s)\n", debugstr_variant(arg));

    assert(args_cnt == 1);

    switch(V_VT(arg)) {
        case 128:
            return return_string(res, ByteW);
        case 133:
            return return_string(res, IntegerW);
        case 132:
            return return_string(res, LongW);
        case 130:
            return return_string(res, SingleW);
        case 129:
            return return_string(res, DoubleW);
        case 137:
            return return_string(res, CurrencyW);
        case 135:
            return return_string(res, DecimalW);
        case 136:
            return return_string(res, DateW);
        case 138:
            return return_string(res, StringW);
        case 139:
            return return_string(res, BooleanW);
        case 134:
            return return_string(res, EmptyW);
        case 131:
            return return_string(res, NullW);
        default:
            FIXME("arg %s not supported\n", debugstr_variant(arg));
            return E_NOTIMPL;
        }
}
