
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int EINVAL ;
 int ERANGE ;
 int FALSE ;
 int TRUE ;
 int * _errno () ;
 size_t _snprintf (char*,size_t,char*,int,int) ;

__attribute__((used)) static inline BOOL strftime_int(char *str, size_t *pos, size_t max,
        int src, int prec, int l, int h)
{
    size_t len;

    if(src<l || src>h) {
        *str = 0;
        *_errno() = EINVAL;
        return FALSE;
    }

    len = _snprintf(str+*pos, max-*pos, "%0*d", prec, src);
    if(len == -1) {
        *str = 0;
        *_errno() = ERANGE;
        return FALSE;
    }

    *pos += len;
    return TRUE;
}
