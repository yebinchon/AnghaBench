
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* tmp_dir; } ;
typedef TYPE_1__ install_ctx_t ;
typedef char WCHAR ;


 int ARRAY_SIZE (char const*) ;
 int FIXME (char*,int ) ;
 int debugstr_w (char const*) ;
 int memcpy (char*,char const*,size_t) ;
 char* strchrW (char const*,char) ;
 int strcpyW (char*,char const*) ;
 size_t strlenW (char const*) ;
 int strncmpiW (char const*,char const*,int ) ;

__attribute__((used)) static void expand_command(install_ctx_t *ctx, const WCHAR *cmd, WCHAR *buf, size_t *size)
{
    const WCHAR *ptr = cmd, *prev_ptr = cmd;
    size_t len = 0, len2;

    static const WCHAR expand_dirW[] = {'%','E','X','T','R','A','C','T','_','D','I','R','%'};

    while((ptr = strchrW(ptr, '%'))) {
        if(buf)
            memcpy(buf+len, prev_ptr, ptr-prev_ptr);
        len += ptr-prev_ptr;

        if(!strncmpiW(ptr, expand_dirW, ARRAY_SIZE(expand_dirW))) {
            len2 = strlenW(ctx->tmp_dir);
            if(buf)
                memcpy(buf+len, ctx->tmp_dir, len2*sizeof(WCHAR));
            len += len2;
            ptr += ARRAY_SIZE(expand_dirW);
        }else {
            FIXME("Can't expand %s\n", debugstr_w(ptr));
            if(buf)
                buf[len] = '%';
            len++;
            ptr++;
        }

        prev_ptr = ptr;
    }

    if(buf)
        strcpyW(buf+len, prev_ptr);
    *size = len + strlenW(prev_ptr) + 1;
}
