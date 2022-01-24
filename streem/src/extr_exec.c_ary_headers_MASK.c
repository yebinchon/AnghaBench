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
typedef  int /*<<< orphan*/  strm_value ;
typedef  size_t strm_int ;
typedef  int /*<<< orphan*/  strm_array ;
typedef  int /*<<< orphan*/  node_string ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static strm_array
FUNC3(node_string* headers, strm_int len)
{
  strm_array ary = FUNC1(NULL, len);
  strm_value* p = FUNC2(ary);
  strm_int i;

  for (i=0; i<len; i++) {
    p[i] = FUNC0(headers[i]);
  }
  return ary;
}