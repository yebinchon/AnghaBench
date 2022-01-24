#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ nData; } ;
struct TYPE_4__ {TYPE_3__ b; } ;
typedef  TYPE_1__ StringBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char const*,int,char*,int) ; 

__attribute__((used)) static void FUNC2(StringBuffer *sb, const char *zFrom, int nFrom){
  FUNC0( sb->b.nData>0 );
  if( nFrom>0 ){
    sb->b.nData--;
    FUNC1(&sb->b, zFrom, nFrom, "", 1);
  }
}