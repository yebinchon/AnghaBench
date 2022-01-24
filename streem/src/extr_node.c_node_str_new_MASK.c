#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct node_string {int dummy; } ;
typedef  int strm_int ;
typedef  TYPE_1__* node_string ;
struct TYPE_4__ {int len; char* buf; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 

node_string
FUNC2(const char* s, strm_int len)
{
  node_string str;

  str = FUNC0(sizeof(struct node_string)+len+1);
  str->len = len;
  FUNC1(str->buf, s, len);
  str->buf[len] = '\0';
  return str;
}