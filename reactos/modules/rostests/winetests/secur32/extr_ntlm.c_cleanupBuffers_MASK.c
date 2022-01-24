#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ULONG ;
struct TYPE_5__ {size_t cBuffers; struct TYPE_5__* pBuffers; struct TYPE_5__* pvBuffer; } ;
struct TYPE_4__ {TYPE_3__* out_buf; TYPE_3__* in_buf; } ;
typedef  TYPE_1__ SspiData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static void FUNC2(SspiData *sspi_data)
{
    ULONG i;

    if(sspi_data->in_buf != NULL)
    {
        for(i = 0; i < sspi_data->in_buf->cBuffers; ++i)
        {
            FUNC1(FUNC0(), 0, sspi_data->in_buf->pBuffers[i].pvBuffer);
        }
        FUNC1(FUNC0(), 0, sspi_data->in_buf->pBuffers);
        FUNC1(FUNC0(), 0, sspi_data->in_buf);
    }
    
    if(sspi_data->out_buf != NULL)
    {
        for(i = 0; i < sspi_data->out_buf->cBuffers; ++i)
        {
            FUNC1(FUNC0(), 0, sspi_data->out_buf->pBuffers[i].pvBuffer);
        }
        FUNC1(FUNC0(), 0, sspi_data->out_buf->pBuffers);
        FUNC1(FUNC0(), 0, sspi_data->out_buf);
    }
}