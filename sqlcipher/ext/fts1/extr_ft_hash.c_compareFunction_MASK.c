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
#define  HASH_BINARY 131 
#define  HASH_INT 130 
#define  HASH_POINTER 129 
#define  HASH_STRING 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (void const*,int,void const*,int) ; 
 int FUNC2 (void const*,int,void const*,int) ; 
 int FUNC3 (void const*,int,void const*,int) ; 
 int FUNC4 (void const*,int,void const*,int) ; 

__attribute__((used)) static int (*FUNC5(int keyClass))(const void*,int,const void*,int){
#if 0 /* HASH_INT and HASH_POINTER are never used */
  switch( keyClass ){
    case HASH_INT:     return &intCompare;
    case HASH_POINTER: return &ptrCompare;
    case HASH_STRING:  return &strCompare;
    case HASH_BINARY:  return &binCompare;
    default: break;
  }
  return 0;
#else
  if( keyClass==HASH_STRING ){
    return &strCompare;
  }else{
    FUNC0( keyClass==HASH_BINARY );
    return &binCompare;
  }
#endif
}