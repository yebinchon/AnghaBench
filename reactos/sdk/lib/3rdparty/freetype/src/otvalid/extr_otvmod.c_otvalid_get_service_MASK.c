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
typedef  int /*<<< orphan*/  FT_Pointer ;
typedef  int /*<<< orphan*/  FT_Module ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  otvalid_services ; 

__attribute__((used)) static FT_Pointer
  FUNC2( FT_Module    module,
                       const char*  service_id )
  {
    FUNC0( module );

    return FUNC1( otvalid_services, service_id );
  }