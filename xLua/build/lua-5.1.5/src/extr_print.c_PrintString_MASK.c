#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t len; } ;
struct TYPE_6__ {TYPE_1__ tsv; } ;
typedef  TYPE_2__ TString ;

/* Variables and functions */
 char* FUNC0 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 

__attribute__((used)) static void FUNC4(const TString* ts)
{
 const char* s=FUNC0(ts);
 size_t i,n=ts->tsv.len;
 FUNC3('"');
 for (i=0; i<n; i++)
 {
  int c=s[i];
  switch (c)
  {
   case '"': FUNC2("\\\""); break;
   case '\\': FUNC2("\\\\"); break;
   case '\a': FUNC2("\\a"); break;
   case '\b': FUNC2("\\b"); break;
   case '\f': FUNC2("\\f"); break;
   case '\n': FUNC2("\\n"); break;
   case '\r': FUNC2("\\r"); break;
   case '\t': FUNC2("\\t"); break;
   case '\v': FUNC2("\\v"); break;
   default:	if (FUNC1((unsigned char)c))
   			FUNC3(c);
		else
			FUNC2("\\%03u",(unsigned char)c);
  }
 }
 FUNC3('"');
}