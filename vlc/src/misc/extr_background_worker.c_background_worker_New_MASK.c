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
struct background_worker_config {int dummy; } ;
struct background_worker {int dummy; } ;

/* Variables and functions */
 struct background_worker* FUNC0 (void*,struct background_worker_config*) ; 

struct background_worker* FUNC1( void* owner,
    struct background_worker_config* conf )
{
    return FUNC0(owner, conf);
}