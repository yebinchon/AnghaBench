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
 scalar_t__ FUNC0 (char*,char*) ; 
 char* FUNC1 (char*,char) ; 

__attribute__((used)) static int
  FUNC2( char*   filename,
            char**  extensions )
  {
    int    i;
    char*  pt;


    if ( !extensions )
      return true;

    pt = FUNC1( filename, '.' );
    if ( !pt )
      return false;
    if ( pt < FUNC1( filename, '/' ) )
      return false;

    for ( i = 0; extensions[i] != NULL; i++ )
      if ( FUNC0( pt + 1, extensions[i] ) == 0 ||
           FUNC0( pt,     extensions[i] ) == 0 )
        return true;

    return false;
  }