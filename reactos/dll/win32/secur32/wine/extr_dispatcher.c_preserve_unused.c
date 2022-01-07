
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int com_buf_offset; scalar_t__ com_buf; } ;
typedef int SECURITY_STATUS ;
typedef TYPE_1__* PNegoHelper ;


 int SEC_E_OK ;
 int TRACE (char*,int) ;
 int memmove (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static SECURITY_STATUS preserve_unused(PNegoHelper helper, int offset_len)
{
    TRACE("offset_len = %d\n", offset_len);

    if(offset_len > 0)
    {
        memmove(helper->com_buf, helper->com_buf + helper->com_buf_offset,
                offset_len);
        helper->com_buf_offset = offset_len;
    }
    else
    {
        helper->com_buf_offset = 0;
    }

    TRACE("helper->com_buf_offset was set to: %d\n", helper->com_buf_offset);
    return SEC_E_OK;
}
