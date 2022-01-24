#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* com_buf; int /*<<< orphan*/  pipe_out; } ;
typedef  int /*<<< orphan*/  SECURITY_STATUS ;
typedef  TYPE_1__* PNegoHelper ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  SEC_E_BUFFER_TOO_SMALL ; 
 int /*<<< orphan*/  SEC_E_ILLEGAL_MESSAGE ; 
 int /*<<< orphan*/  SEC_E_INVALID_TOKEN ; 
 int /*<<< orphan*/  SEC_E_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

SECURITY_STATUS FUNC9(PNegoHelper helper, char *buffer,
        unsigned int max_buflen, int *buflen)
{
    int offset_len;
    SECURITY_STATUS sec_status = SEC_E_OK;

    FUNC1("In helper: sending %s\n", FUNC2(buffer));

    /* buffer + '\n' */
    FUNC8(helper->pipe_out, buffer, FUNC3(buffer));
    FUNC8(helper->pipe_out, "\n", 1);

    if((sec_status = FUNC6(helper, &offset_len)) != SEC_E_OK)
    {
        return sec_status;
    }
    
    FUNC1("In helper: received %s\n", FUNC2(helper->com_buf));
    *buflen = FUNC3(helper->com_buf);

    if( *buflen > max_buflen)
    {   
        FUNC0("Buffer size too small(%d given, %d required) dropping data!\n",
                max_buflen, *buflen);
        return SEC_E_BUFFER_TOO_SMALL;
    }

    if( *buflen < 2 )
    {
        return SEC_E_ILLEGAL_MESSAGE;
    }

    /* We only get ERR if the input size is too big. On a GENSEC error,
     * ntlm_auth will return BH */
    if(FUNC7(helper->com_buf, "ERR", 3) == 0)
    {
        return SEC_E_INVALID_TOKEN;
    }

    FUNC4(buffer, helper->com_buf, *buflen+1);

    sec_status = FUNC5(helper, offset_len);
    
    return sec_status;
}