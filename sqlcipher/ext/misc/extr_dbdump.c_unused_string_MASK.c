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
 int /*<<< orphan*/  FUNC0 (int,char*,char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 

__attribute__((used)) static const char *FUNC2(
  const char *z,                    /* Result must not appear anywhere in z */
  const char *zA, const char *zB,   /* Try these first */
  char *zBuf                        /* Space to store a generated string */
){
  unsigned i = 0;
  if( FUNC1(z, zA)==0 ) return zA;
  if( FUNC1(z, zB)==0 ) return zB;
  do{
    FUNC0(20,zBuf,"(%s%u)", zA, i++);
  }while( FUNC1(z,zBuf)!=0 );
  return zBuf;
}