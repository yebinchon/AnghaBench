
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* nschannel; } ;
typedef TYPE_2__ nsChannelBSC ;
typedef int nsACString ;
typedef int charsetW ;
typedef char WCHAR ;
struct TYPE_4__ {int nsIHttpChannel_iface; } ;


 int CP_ACP ;
 int FIXME (char*,...) ;
 size_t WideCharToMultiByte (int ,int ,char const*,size_t,char*,size_t,int *,int *) ;
 int debugstr_wn (char const*,size_t) ;
 char* heap_alloc (size_t) ;
 int heap_free (char*) ;
 scalar_t__ isspaceW (char const) ;
 int memicmpW (char const*,char const*,int) ;
 int nsACString_Finish (int *) ;
 int nsACString_InitDepend (int *,char*) ;
 int nsIHttpChannel_SetContentCharset (int *,int *) ;
 char* strchrW (char const*,char) ;
 size_t strlenW (char const*) ;

__attribute__((used)) static void parse_content_type(nsChannelBSC *This, const WCHAR *value)
{
    const WCHAR *ptr;
    size_t len;

    static const WCHAR charsetW[] = {'c','h','a','r','s','e','t','='};

    ptr = strchrW(value, ';');
    if(!ptr)
        return;

    ptr++;
    while(*ptr && isspaceW(*ptr))
        ptr++;

    len = strlenW(value);
    if(ptr + sizeof(charsetW)/sizeof(WCHAR) < value+len && !memicmpW(ptr, charsetW, sizeof(charsetW)/sizeof(WCHAR))) {
        size_t charset_len, lena;
        nsACString charset_str;
        const WCHAR *charset;
        char *charseta;

        ptr += sizeof(charsetW)/sizeof(WCHAR);

        if(*ptr == '\'') {
            FIXME("Quoted value\n");
            return;
        }else {
            charset = ptr;
            while(*ptr && *ptr != ',')
                ptr++;
            charset_len = ptr-charset;
        }

        lena = WideCharToMultiByte(CP_ACP, 0, charset, charset_len, ((void*)0), 0, ((void*)0), ((void*)0));
        charseta = heap_alloc(lena+1);
        if(!charseta)
            return;

        WideCharToMultiByte(CP_ACP, 0, charset, charset_len, charseta, lena, ((void*)0), ((void*)0));
        charseta[lena] = 0;

        nsACString_InitDepend(&charset_str, charseta);
        nsIHttpChannel_SetContentCharset(&This->nschannel->nsIHttpChannel_iface, &charset_str);
        nsACString_Finish(&charset_str);
        heap_free(charseta);
    }else {
        FIXME("unhandled: %s\n", debugstr_wn(ptr, len - (ptr-value)));
    }
}
