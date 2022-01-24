#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  aTokenChar; int /*<<< orphan*/  aCategory; } ;
typedef  TYPE_1__ Unicode61Tokenizer ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(Unicode61Tokenizer *p, const char *zCat){
  const char *z = zCat;

  while( *z ){
    while( *z==' ' || *z=='\t' ) z++;
    if( *z && FUNC1(z, p->aCategory) ){
      return SQLITE_ERROR;
    }
    while( *z!=' ' && *z!='\t' && *z!='\0' ) z++;
  }

  FUNC0(p->aCategory, p->aTokenChar);
  return SQLITE_OK;
}