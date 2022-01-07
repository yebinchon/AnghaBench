
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* com_buf; int pipe_out; } ;
typedef int SECURITY_STATUS ;
typedef TYPE_1__* PNegoHelper ;


 int ERR (char*,unsigned int,int) ;
 int SEC_E_BUFFER_TOO_SMALL ;
 int SEC_E_ILLEGAL_MESSAGE ;
 int SEC_E_INVALID_TOKEN ;
 int SEC_E_OK ;
 int TRACE (char*,int ) ;
 int debugstr_a (char*) ;
 int lstrlenA (char*) ;
 int memcpy (char*,char*,int) ;
 int preserve_unused (TYPE_1__*,int) ;
 int read_line (TYPE_1__*,int*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int write (int ,char*,int) ;

SECURITY_STATUS run_helper(PNegoHelper helper, char *buffer,
        unsigned int max_buflen, int *buflen)
{
    int offset_len;
    SECURITY_STATUS sec_status = SEC_E_OK;

    TRACE("In helper: sending %s\n", debugstr_a(buffer));


    write(helper->pipe_out, buffer, lstrlenA(buffer));
    write(helper->pipe_out, "\n", 1);

    if((sec_status = read_line(helper, &offset_len)) != SEC_E_OK)
    {
        return sec_status;
    }

    TRACE("In helper: received %s\n", debugstr_a(helper->com_buf));
    *buflen = lstrlenA(helper->com_buf);

    if( *buflen > max_buflen)
    {
        ERR("Buffer size too small(%d given, %d required) dropping data!\n",
                max_buflen, *buflen);
        return SEC_E_BUFFER_TOO_SMALL;
    }

    if( *buflen < 2 )
    {
        return SEC_E_ILLEGAL_MESSAGE;
    }



    if(strncmp(helper->com_buf, "ERR", 3) == 0)
    {
        return SEC_E_INVALID_TOKEN;
    }

    memcpy(buffer, helper->com_buf, *buflen+1);

    sec_status = preserve_unused(helper, offset_len);

    return sec_status;
}
