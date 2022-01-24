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
 char const* _C_name ; 
 char* FUNC0 (char const*) ; 

__attribute__((used)) static const char *FUNC1( const char *LC, char *nm )
{
  char *name = FUNC0( "LC_ALL" );

  if ( name != NULL && *name != 0 ) {
    return name;
  }
  name = FUNC0( LC );
  if ( name != NULL && *name != 0 ) {
    return name;
  }
  name = FUNC0( "LANG" );
  if ( name != NULL && *name != 0 ) {
    return name;
  }

  return _C_name;
}