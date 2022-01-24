#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uintmax_t ;
struct vlc_http_resource {struct vlc_http_msg* response; } ;
struct vlc_http_msg {int dummy; } ;
struct vlc_http_file {scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vlc_http_msg*) ; 
 int FUNC1 (struct vlc_http_msg*) ; 
 struct vlc_http_msg* FUNC2 (struct vlc_http_resource*,scalar_t__*) ; 

int FUNC3(struct vlc_http_resource *res, uintmax_t offset)
{
    struct vlc_http_msg *resp = FUNC2(res, &offset);
    if (resp == NULL)
        return -1;

    struct vlc_http_file *file = (struct vlc_http_file *)res;

    int status = FUNC1(resp);
    if (res->response != NULL)
    {   /* Accept the new and ditch the old one if:
         * - requested succeeded and range was accepted (206),
         * - requested failed due to out-of-range (416),
         * - request succeeded and seek offset is zero (2xx).
         */
        if (status != 206 && status != 416 && (offset != 0 || status >= 300))
        {
            FUNC0(resp);
            return -1;
        }
        FUNC0(res->response);
    }

    res->response = resp;
    file->offset = offset;
    return 0;
}