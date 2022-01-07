
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int DWORD ;


 int TRACE (char*,char*,int,int ,int) ;
 int debugstr_wn (char*,int) ;
 scalar_t__ is_slash (char const) ;

__attribute__((used)) static DWORD remove_dot_segments(WCHAR *path, DWORD path_len) {
    WCHAR *out = path;
    const WCHAR *in = out;
    const WCHAR *end = out + path_len;
    DWORD len;

    while(in < end) {




        while(in < end && !is_slash(*in))
            *out++ = *in++;
        if(in == end)
            break;
        *out++ = *in++;

        while(in < end) {
            if(*in != '.')
                break;


            if(in + 1 == end) {
                ++in;
                break;
            }


            if(is_slash(in[1])) {
                in += 2;
                continue;
            }


            if(in[1] != '.' || (in + 2 != end && !is_slash(in[2])))
                break;


            if(out > path+1 && is_slash(*--out))
                --out;
            while(out > path && !is_slash(*(--out)));
            if(is_slash(*out))
                ++out;
            in += 2;
            if(in != end)
                ++in;
        }
    }

    len = out - path;
    TRACE("(%p %d): Path after dot segments removed %s len=%d\n", path, path_len,
        debugstr_wn(path, len), len);
    return len;
}
