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
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(const char *z){
  while( FUNC1(z) ){ z++; }
  if( *z==0 ) return 0;
  while( FUNC0(z) ){ z++; }
  if( *z==0 ) return 0;
  while( FUNC1(z) ){ z++; }
  if( *z==0 ) return 0;
  while( FUNC0(z) ){ z++; }
  return *z!=0;
}