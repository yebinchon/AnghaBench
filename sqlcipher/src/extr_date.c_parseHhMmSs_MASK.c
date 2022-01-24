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
struct TYPE_4__ {int validHMS; int h; int m; int s; int validTZ; scalar_t__ tz; scalar_t__ rawS; scalar_t__ validJD; } ;
typedef  TYPE_1__ DateTime ;

/* Variables and functions */
 int FUNC0 (char const*,char*,int*,...) ; 
 scalar_t__ FUNC1 (char const*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (char const) ; 

__attribute__((used)) static int FUNC3(const char *zDate, DateTime *p){
  int h, m, s;
  double ms = 0.0;
  if( FUNC0(zDate, "20c:20e", &h, &m)!=2 ){
    return 1;
  }
  zDate += 5;
  if( *zDate==':' ){
    zDate++;
    if( FUNC0(zDate, "20e", &s)!=1 ){
      return 1;
    }
    zDate += 2;
    if( *zDate=='.' && FUNC2(zDate[1]) ){
      double rScale = 1.0;
      zDate++;
      while( FUNC2(*zDate) ){
        ms = ms*10.0 + *zDate - '0';
        rScale *= 10.0;
        zDate++;
      }
      ms /= rScale;
    }
  }else{
    s = 0;
  }
  p->validJD = 0;
  p->rawS = 0;
  p->validHMS = 1;
  p->h = h;
  p->m = m;
  p->s = s + ms;
  if( FUNC1(zDate, p) ) return 1;
  p->validTZ = (p->tz!=0)?1:0;
  return 0;
}