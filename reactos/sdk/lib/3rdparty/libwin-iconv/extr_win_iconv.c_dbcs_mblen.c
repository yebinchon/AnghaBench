
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uchar ;
struct TYPE_3__ {int codepage; } ;
typedef TYPE_1__ csconv_t ;


 int EINVAL ;
 scalar_t__ IsDBCSLeadByteEx (int ,int const) ;
 int seterror (int ) ;

__attribute__((used)) static int
dbcs_mblen(csconv_t *cv, const uchar *buf, int bufsize)
{
    int len = IsDBCSLeadByteEx(cv->codepage, buf[0]) ? 2 : 1;
    if (bufsize < len)
        return seterror(EINVAL);
    return len;
}
