#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vlc_http_stream {TYPE_1__* cbs; } ;
struct vlc_http_msg {int dummy; } ;
struct TYPE_2__ {struct vlc_http_msg* (* read_headers ) (struct vlc_http_stream*) ;} ;

/* Variables and functions */
 struct vlc_http_msg* FUNC0 (struct vlc_http_stream*) ; 

__attribute__((used)) static inline
struct vlc_http_msg *FUNC1(struct vlc_http_stream *s)
{
    return s->cbs->read_headers(s);
}