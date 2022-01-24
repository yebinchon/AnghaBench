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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ client_name ; 
 scalar_t__ do_client ; 
 scalar_t__ do_header ; 
 scalar_t__ do_idfile ; 
 scalar_t__ do_proxies ; 
 scalar_t__ do_regscript ; 
 scalar_t__ do_server ; 
 scalar_t__ do_typelib ; 
 scalar_t__ header_name ; 
 scalar_t__ idfile_name ; 
 scalar_t__ local_stubs_name ; 
 scalar_t__ proxy_name ; 
 scalar_t__ regscript_name ; 
 scalar_t__ server_name ; 
 scalar_t__ temp_name ; 
 scalar_t__ typelib_name ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(void)
{
  FUNC0();
  if(temp_name)
    FUNC1(temp_name);
  if (do_header)
    FUNC1(header_name);
  if (local_stubs_name)
    FUNC1(local_stubs_name);
  if (do_client)
    FUNC1(client_name);
  if (do_server)
    FUNC1(server_name);
  if (do_regscript)
    FUNC1(regscript_name);
  if (do_idfile)
    FUNC1(idfile_name);
  if (do_proxies)
    FUNC1(proxy_name);
  if (do_typelib)
    FUNC1(typelib_name);
}