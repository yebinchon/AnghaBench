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
struct parser {int dummy; } ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct parser*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct parser*) ; 

__attribute__((used)) static const WCHAR *FUNC2( struct parser *parser, const WCHAR *pos )
{
  const WCHAR *p = pos;

  while (!FUNC0( parser, p ))
     p++;
  FUNC1( parser );
  return p;
}