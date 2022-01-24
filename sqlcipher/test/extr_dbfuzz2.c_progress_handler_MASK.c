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
 int eVerbosity ; 
 scalar_t__ mxCb ; 
 scalar_t__ nCb ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 

__attribute__((used)) static int FUNC1(void *pNotUsed){
  nCb++;
  if( nCb<mxCb ) return 0;
  if( eVerbosity>=1 ){
    FUNC0("-- Progress limit of %d reached\n", mxCb);
  }
  return 1;
}